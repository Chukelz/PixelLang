{-# LANGUAGE RankNTypes #-}

module PixelEval where
import PixelGrammar
import Data.Matrix
import System.IO
import System.IO.Unsafe
import Control.Monad 
import qualified Data.List as List

{--data Program = Start Exp | Comp Program Program deriving (Eq,Show)

data Elem = Var Int deriving (Eq,Show)

data Row = Element Elem | Row Elem Row deriving (Eq,Show)

data Grid = Chain Row | Grid Row Grid deriving (Eq,Show)

data Exp =   Int Int | TileVar String | Pos Exp Exp | Operators Operators | Booleans Booleans
            | Tile Grid | MTile (Matrix Int) | FileName String deriving (Eq,Show)
data Operators = Rotate Exp Exp | ReflectX Exp | ReflectY Exp | RepeatX Exp Exp
                | RepeatY Exp Exp | HJoin Exp Exp | VJoin Exp Exp | Scale Exp Exp
                | Iterate Exp Exp | Fill Exp | Blank Exp | PAnd Exp Exp | PNot Exp
                | If Exp Exp Exp | Mask Exp Exp | Print Exp | Cut Exp Exp Exp Exp
                | Paste Exp Exp Exp | Lambda String Exp | Plus Exp Exp | Minus Exp Exp
                | Divide Exp Exp | Multiply Exp Exp | AEquals String Exp | Fst Exp
                | Snd Exp | Read Exp deriving (Eq, Show)
data Booleans =   Gt Exp Exp | Lt Exp Exp | LtEquals Exp Exp | GtEquals Exp Exp
                | CompareEquals Exp Exp | NotEqual Exp Exp | And Exp Exp | Or Exp Exp
                | PTrue | PFalse deriving (Eq, Show)-}
-- data PixelType = PInt | PBool | Fun PixelType  PixelType | TPos PixelType PixelType | PTile

data Frame = HRotate Exp | HReflectX | HComp Program Environment
           | HReflectY | RepeatXH Exp | RepeatYH Exp | HHJoin Exp Environment | HJoinH Exp
           | HVJoin Exp Environment | VJoinH Exp | HScale Exp | HIterate Exp Environment | IterateH Exp | HFill Exp 
           | HBlank | HPAnd Exp Environment | PAndH Exp | HPNot | HRead
           | HMask Exp Environment | MaskH Exp | HPrint Exp Environment | HCut Exp Exp Exp Environment 
           | HPaste Exp Exp Environment | PasteH Exp Exp | HPlus Exp Environment | PlusH Exp
           | HMinus Exp Environment | MinusH Exp | HDivide Exp Environment | DivideH Exp
           | HMultiply Exp Environment  | MultiplyH Exp | HAEquals String Environment | AEqualsH Exp
           | HIf Exp Exp Environment| HFst | HSnd | HGT Exp Environment | GTH Exp 
           | HStart | HLT Exp Environment | LTH Exp | HLTe Exp Environment | LTeH Exp 
           | HGTe Exp Environment | GTeH Exp | HCe Exp Environment | CeH Exp | HNe Exp Environment | NeH Exp 
           | HAnd Exp Environment | AndH Booleans | HOr Exp Environment | OrH Booleans 

            deriving (Eq,Show)
type Kontinuation = [ Frame ]
type PState = (Program, Environment, Kontinuation)
type EState = (Exp,Environment,Kontinuation)
type OState = (Operators, Environment, Kontinuation)
type BState = (Booleans, Environment, Kontinuation)

data Types = Progr Program | Expr Exp | Opr Operators | Bool Booleans | Done deriving (Eq, Show)
type State = (Types, Environment, Kontinuation)

unpack :: Exp -> (Exp,Environment)
-- Function to unpack a closure to extract the underlying lambda term and environment
unpack e = (e,[])

getValueBinding :: String -> Environment -> (Exp,Environment)
getValueBinding x [] = error "Variable binding not found"
getValueBinding x ((y,e):env) | x == y  = unpack e
                              | otherwise = getValueBinding x env

update :: Environment -> String -> Exp -> Environment
update env x e = (x,e) : env

isValue :: Types -> Bool
isValue (Expr (MTile _)) = True
isValue _ = False

--checks int attached to variable to make sure it's an elem rather than a regular int the lang
elemCheck :: Elem -> Bool
elemCheck (Var x) | x <= 1 = True
                  | otherwise = False

rowCheck :: Row -> Bool
rowCheck (Element x) = elemCheck x
rowCheck (Row x next) = (elemCheck x) && (rowCheck next)

gridCheck :: Grid -> Bool
gridCheck (Chain x) = rowCheck x
gridCheck (Grid x next) = (rowCheck x) && (gridCheck next)

--putting tile through it
valCheck :: Exp -> Bool
valCheck (Tile x) = gridCheck x

toMatrix :: Exp -> Matrix Int
toMatrix tile@(Tile x) | valCheck tile = fromLists $ reverse $ gridElem [] x

rowElem :: [Int] -> Row  -> [Int]
rowElem m (Element (Var x)) = x : m
rowElem m (Row (Var x) next) = let n = x : m in rowElem n next

gridElem :: [[Int]] -> Grid -> [[Int]]
gridElem m (Chain x) = (rowElem [] x) : m
gridElem m (Grid x next) = let n = (rowElem [] x) : m in gridElem n next

listForm :: Matrix Int -> [[Int]]
listForm m = toLists m

rotate :: Int -> Exp -> Exp
rotate 0 x@(MTile tile) = x
rotate x (MTile tile) = rotate (x-1) nTile where
     nTile = MTile (transpose $ fromLists $ reverse $ listForm tile)

reflectY :: Matrix Int -> Matrix Int
reflectY tile = let listForm = toLists tile
                 in fromLists (map reverse listForm)

reflectX :: Matrix Int -> Matrix Int
reflectX tile = let listForm = toLists tile
                 in fromLists (reverse listForm)

fill :: Int -> Matrix Int -> Matrix Int
fill num tile = mapPos (\(r,c) a -> num) tile

scale :: Int -> Matrix Int -> Matrix Int
scale factor tile = flatten (mapPos (\(r,c) a -> scale' factor (getElem r c tile)) tile)

scale' :: Int -> Int -> Matrix Int
scale' factor num = fill num (zero factor factor)

hjoin :: Matrix Int -> Matrix Int -> Matrix Int
hjoin x y =  x <|>  y

vjoin :: Matrix Int -> Matrix Int -> Matrix Int
vjoin x y = x <-> y

repeatx :: (Eq t, Num t) => t ->Matrix Int ->  Matrix Int
repeatx 1 x = x
repeatx x y = hjoin y (repeatx (x - 1) y)


repeaty :: (Eq t, Num t) =>  t ->Matrix Int -> Matrix Int
repeaty 1 x = x
repeaty x y = vjoin y (repeaty  (x - 1) y)

blank :: Num a => Int -> Matrix a
blank x = zero x x

cut :: Matrix a -> (Int, Int) -> Int -> Int -> Matrix a
cut x (a,b) y z = submatrix (a + 1) (a + y) (b+1) (b + z) x


paste :: Matrix a -> (Int, Int) -> Matrix a -> Matrix a
paste bigMatrix (row,col) smallMatrix =
  -- Extract the submatrix to be replaced
  let
    numRows = nrows smallMatrix
    numCols = ncols smallMatrix
    subMatrix = submatrix row (row+numRows-1) col (col+numCols-1) bigMatrix
  -- Replace the values in the submatrix
    newSubMatrix = matrix numRows numCols $ \(i,j) ->
      if (i,j) `elem` [(r,c) | r <- [1..numRows], c <- [1..numCols]]
      then smallMatrix ! (i,j)
      else subMatrix ! (i,j)
  in
    -- Combine the new submatrix with the original matrix
    setSubMatrix (row,col) newSubMatrix bigMatrix


setSubMatrix :: (Int, Int) -> Matrix a -> Matrix a -> Matrix a
setSubMatrix (row, col) subMatrix bigMatrix =
  -- Get the number of rows and columns of the submatrix
  let
    numRows = nrows subMatrix
    numCols = ncols subMatrix
  in
    -- Replace the values in the submatrix of the big matrix
    foldl (\matrix ((r,c),val) -> setElem val (row+r, col+c) matrix) bigMatrix $
      [((r,c), subMatrix ! (r,c)) | r <- [1..numRows], c <- [1..numCols]]

pand :: (Eq a1, Eq b, Num a1, Num b, Num a2) => Matrix a1 -> Matrix b -> Matrix a2
pand a b = fromLists (zipWith (zipWith (.&.)) (toLists a) (toLists b))
  where
    (.&.) x y = if x == 1 && y == 1 then 1 else 0


pnot :: (Eq a1, Num a1, Num a2) => Matrix a1 -> Matrix a2
pnot m = fromLists (map (map (\x -> if x == 1 then 0 else 1)) (toLists m))


printpixel :: Exp -> IO ()
printpixel (MTile mat) = mapM_ printRow (toLists mat)
  where
    printRow row = putStrLn $ List.intercalate "" $ map show row

check :: (Int,Int) -> OState -> State
check (row, col) ((If (Booleans b) e1 e2), env, k) = ((Bool b), ("row",Int (row+1)) : ("col",Int (col+1)) : env, (HIf e1 e2 env) : k)

recurse :: OState -> Matrix Int -> Matrix State
recurse state tile = mapPos (\(r,c) a -> check (r,c) state) tile

isIfFrame :: Frame -> Bool
isIfFrame (HIf a b c) = True
isIfFrame _ = False

notNested :: Kontinuation -> Bool
notNested [] = True
notNested (k:ks) | not (isIfFrame k) = notNested ks
                 | otherwise = False

isNested :: State -> Bool
isNested ((Expr (Operators (If a b c))), env, k) = True
isNested _ = False

ifToBool :: State -> State
ifToBool ((Expr (Operators (If (Booleans b) e1 e2))), env, k) = (Bool b, env, (HIf e1 e2 env):k)

isTileVarState :: State -> Bool
isTileVarState ((Expr (TileVar x)), env, k) = True
isTileVarState _ = False

evalTile :: Matrix State -> Matrix State
evalTile tile = mapPos (\(r,c) a -> evalTLoop (getElem r c tile)) tile

fromMState :: Matrix State -> Matrix Int
fromMState tile | not (isTileVarState (getElem 1 1 tile)) = mapPos (\(r,c) a -> (\(Expr (Int x), env, v) -> x) (getElem r c tile)) tile
                | otherwise = fromMState' (mapPos (\(r,c) a -> eval1 (getElem r c tile)) tile)

fromMState' :: Matrix State -> Matrix Int
fromMState' tile = flatten $ mapPos (\(r,c) a -> (\(Expr (MTile x), env, v) -> x) (getElem r c tile)) tile


readMatrix :: FilePath -> Matrix Int
readMatrix filePath =
  let contents = unsafePerformIO $ readFile filePath
      rows = map (map (\x -> read [x] :: Int)) $ lines contents
  in fromLists rows
                
               




-- Eval for different types of states
eval1 :: State -> State
eval1 ((Progr a), env, k) = pEval1 (a, env, k)
eval1 ((Expr (Operators a)), env, k) = oEval1 (a, env, k)
eval1 ((Expr (Booleans a)), env, k) = bEval1 (a, env, k)
eval1 ((Expr a), env, k) = eEval1 (a, env, k)

-- Eval for the end of a command - if composed with something else, will evaluate that. If not, 'terminates'
eval1 (Done, env, (HComp e env2) :k) = (Progr e, env, k)
eval1 (Done, env, []) = (Done, env, [])

-- Eval for Programs (Start & Comp)
pEval1 :: PState -> State
pEval1 ((Start a), env, k) = ((Expr a), env, k)
pEval1 ((Comp e1 e2), env, k) = ((Progr e1), env, (HComp e2 env): k)

-- Eval for Expressions : Tiles
eEval1 :: EState -> State
eEval1 (tile@(Tile a), env, k) = (Expr (MTile (toMatrix tile)), env, k)
eEval1 (tile@(MTile a), env, (HRotate (Int x)) : k) = (Expr (rotate x tile), env, k)
eEval1 (tile@(MTile a), env1, (HAEquals tn env2):k) = (Done, update env2 tn tile, k)
eEval1 (tile@(MTile a),env, (RepeatXH (Int n)):k) = (Expr (MTile(repeatx n a)),env,k)
eEval1 (tile@(MTile a),env, (RepeatYH (Int n)):k) = (Expr (MTile(repeaty n a)),env,k)
eEval1 (tile@(MTile a),env, (HScale (Int n)):k) = (Expr (MTile(scale n a)),env,k)
eEval1 (tile@(MTile a),env, (HFill (Int n)):k) = (Expr (MTile(fill n a)),env,k)

eEval1 (tile@(MTile a),env, (HReflectX):k) = ((Expr (MTile(reflectX a))),env,k)
eEval1 (tile@(MTile a),env, (HReflectY):k) = ((Expr (MTile(reflectY a))),env,k)
--eEval1 (tile@(MTile a),env, (HPrint (MTile b) env2):k) = (Expr (MTile(printpixel a)),env2,k)
eEval1 (tile@(MTile a), env1, (HIterate b env2): k) = ((Expr b), env2, (IterateH tile): k)

eEval1 (tile1@(MTile a), env1, (HHJoin e env2):k) = (Expr e, env2, (HJoinH tile1):k)
eEval1 (tile1@(MTile a), env, (HJoinH (MTile e)):k) = (Expr (MTile(hjoin e a)), env, k)

eEval1 (tile1@(MTile a), env1, (HVJoin e env2):k) = (Expr e, env2, (VJoinH tile1):k)
eEval1 (tile1@(MTile a), env, (VJoinH (MTile e)):k) = (Expr (MTile(vjoin e a)), env, k)

eEval1 (tile1@(MTile a), env1, (HPAnd e env2):k) = (Expr e, env2, (PAndH tile1):k)
eEval1 (tile1@(MTile a), env1, ((PAndH (MTile e))):k) = (Expr (MTile(pand e a)), env1, k)
eEval1 (tile@(MTile a),env, (HPNot):k) = (Expr (MTile(pnot a)),env,k)


eEval1 (tile@(MTile a), env1, (HCut (Pos (Int x) (Int y)) (Int n ) (Int m) env2):k) = (Expr (MTile(cut a (x,y) n m)), env1,k)
eEval1 (tile@(MTile a), env1, (HPaste pos e env2):k) = (Expr e, env2 ,(PasteH tile pos): k)
eEval1 (tile@(MTile a), env, (PasteH (MTile e) (Pos (Int x) (Int y))):k) = (Expr (MTile(paste  e (x,y) a)), env ,k)
eEval1 ((file@(FileName f)),env, (HRead):k) =  (Expr (MTile(readMatrix f)),env,k )




-- Eval for Expressions : Ints
eEval1 ((Int n),env, (HBlank):k) = (Expr (MTile(blank n)),env,k)

eEval1 ((Int n), env1, (HGT e env2): k) = ((Expr e), env2, (GTH (Int n)):k)
eEval1 ((Int n), env, (GTH (Int m)):k) | m > n = ((Bool PTrue), [], k)
                                       | otherwise = ((Bool PFalse), [], k)

eEval1 ((Int n), env1, (HLT e env2): k) = ((Expr e), env2, (LTH (Int n)):k)
eEval1 ((Int n), env, (LTH (Int m)):k) | m < n = ((Bool PTrue), [], k)
                                       | otherwise = ((Bool PFalse), [], k)

eEval1 ((Int n), env1, (HLTe e env2): k) = ((Expr e), env2, (LTeH (Int n)):k)
eEval1 ((Int n), env, (LTeH (Int m)):k) | m <= n = ((Bool PTrue), [], k)
                                       | otherwise = ((Bool PFalse), [], k)

eEval1 ((Int n), env1, (HGTe e env2): k) = ((Expr e), env2, (GTeH (Int n)):k)
eEval1 ((Int n), env, (GTeH (Int m)):k) | m >= n = ((Bool PTrue), [], k)
                                       | otherwise = ((Bool PFalse), [], k)

eEval1 ((Int n), env1, (HCe e env2): k) = ((Expr e), env2, (CeH (Int n)):k)
eEval1 ((Int n), env, (CeH (Int m)):k) | m == n = ((Bool PTrue), [], k)
                                       | otherwise = ((Bool PFalse), [], k)

eEval1 ((Int n), env1, (HNe e env2): k) = ((Expr e), env2, (NeH (Int n)):k)
eEval1 ((Int n), env, (NeH (Int m)):k) | m /= n = ((Bool PTrue), [], k)
                                       | otherwise = ((Bool PFalse), [], k)

eEval1 ((Int n), env1, (HPlus e env2):k) = ((Expr e),env2, (PlusH (Int n)):k)
eEval1 ((Int n),env,(PlusH (Int m)):k) = (Expr (Int (n+m)),env,k)

eEval1 ((Int n), env1, (HMinus e env2):k) = ((Expr e),env2, (MinusH (Int n)):k)
eEval1 ((Int n),env,(MinusH (Int m)):k) = (Expr(Int (n-m)),env,k)

eEval1 ((Int n), env1, (HMultiply e env2):k) = ((Expr e),env2, (MultiplyH (Int n)):k)
eEval1 ((Int n),env,(MultiplyH (Int m)):k) = (Expr(Int (n*m)),env,k)

eEval1 ((Int n), env1, (HDivide e env2):k) = ((Expr e),env2, (DivideH (Int n)):k)
eEval1 ((Int n),env,(DivideH (Int m)):k) = (Expr(Int (n `div` m)),env,k)

-- Eval for Expressions : Variables
eEval1 ((TileVar x),env,k) = ((Expr e'), env', k) where
  (e', env') = getValueBinding x env

eEval1 a = error (show a)


-- Eval for Operators
oEval1 :: OState -> State
oEval1 ((Rotate x e), env, k) = ((Expr e), env, (HRotate x): k)
oEval1 ((AEquals tn e), env, k) = ((Expr e), env, (HAEquals tn env):k)

oEval1 ((ReflectX e),env, k) = ((Expr e),env,(HReflectX):k)
oEval1 ((ReflectY e),env,k ) = ((Expr e), env , (HReflectY):k)

oEval1 ((RepeatX n e2), env, k) = ((Expr e2),env,(RepeatXH n):k)
oEval1 ((RepeatY n e2), env, k) = ((Expr e2),env,(RepeatYH n):k)
oEval1 ((HJoin e1 e2), env, k) = ((Expr e1), env, (HHJoin e2 env): k)
oEval1 ((VJoin e1 e2), env, k) = ((Expr e1), env, (HVJoin e2 env): k)
oEval1 (Cut e1 e2 e3 e4, env, k) = ((Expr e1), env,(HCut e2 e3 e4 env) : k)
oEval1 ((Paste e1 e2 e3), env, k) = ((Expr e2), env, (HPaste e1 e3 env):k)
oEval1 ((Scale e1 e2), env, k) = ((Expr e2), env, (HScale e1):k )
oEval1 ((Blank e1), env, k) = ((Expr e1), env, (HBlank):k)
oEval1 ((Fill e1 e2), env, k) = ((Expr e2), env, (HFill e1):k)
oEval1 ((PAnd e1 e2),env,k) = ((Expr e1), env,(HPAnd e2 env):k)
oEval1 ((PNot e1),env,k) = ((Expr e1),env,(HPNot):k)
--oEval1 ((Print e1), env, k) = ((Expr e1), env, (HPrint e1 env):k)
oEval1 ((Mask e1 e2 ), env, k) = ((Expr e1),env,(HMask e2 env):k)
oEval1 ((Plus e1 e2), env, k) = ((Expr e1), env, (HPlus e2 env):k)
oEval1 ((Minus e1 e2), env, k) = ((Expr e1), env, (HMinus e2 env):k)
oEval1 ((Divide e1 e2), env, k) = ((Expr e1), env, (HDivide e2 env):k)
oEval1 ((Multiply e1 e2), env, k) = ((Expr e1), env, (HMultiply e2 env):k)
oEval1 ((Iterate b t), env, k) = ((Expr t), env, (HIterate b env): k)
oEval1 (stmt@(If b e1 e2), env, (IterateH (MTile tile)): k) = (Expr (MTile (fromMState $ evalTile $ recurse stmt2 tile)), env, k)
                                                      where stmt2 = (stmt, env, k)
oEval1 ((Read e), env, k) = ((Expr e), env,(HRead):k)





-- Eval for Booleans
bEval1 :: BState -> State
bEval1 ((Gt e1 e2), env, k) = ((Expr e1), env, (HGT e2 env): k) --
bEval1 ((GtEquals e1 e2), env, k) = ((Expr e1), env, (HGTe e2 env): k) --

bEval1 ((Lt e1 e2), env, k) = ((Expr e1), env, (HLT e2 env): k) --
bEval1 ((LtEquals e1 e2), env, k) = ((Expr e1), env, (HLTe e2 env): k) --

bEval1 ((CompareEquals e1 e2), env, k) = ((Expr e1), env, (HCe e2 env): k)
bEval1 ((NotEqual e1 e2), env, k) = ((Expr e1), env, (HNe e2 env): k)

bEval1 ((And e1 e2), env, k) = ((Expr e1), env, (HAnd e2 env): k)
bEval1 ((Or e1 e2), env, k) = ((Expr e1), env, (HOr e2 env): k)

bEval1 (PTrue, env1, (HIf e1 e2 env2):k) = (Expr e1, env1, k) --
bEval1 (PFalse, env1, (HIf e1 e2 env2):k) = (Expr e2, env1, k) --
bEval1 (b, env1, (HAnd e env2): k) = ((Expr e), env2, (AndH b): k)
bEval1 (b, env1, (HOr e env2): k) = ((Expr e), env2, (OrH b): k)
bEval1 (n, env, (AndH m): k) | (n == PTrue) && (m == PTrue) = ((Bool PTrue), env, k)
                             | otherwise = ((Bool PFalse), env, k)
bEval1 (n, env, (OrH m): k) | (n == PTrue) || (m == PTrue) = ((Bool PTrue), env, k)
                            | otherwise = ((Bool PFalse), env, k)


{--
-- Eval for Reflect
eval1 ((ReflectX e), env, k) = (reflectX e, [], k)
eval1 ((ReflectY e), env, k) = (reflectY e, [], k)

-- Eval for Scale
eval1 ((Scale x e), env, k) = (scale x e, [], k)
-}

evalTLoop ::  State -> State
evalTLoop state = evalTLoop' state
  where evalTLoop' state@(e,env,k) | (e == Bool PTrue || e == Bool PFalse) && (notNested $ tail k) =
                                     if isNested $ eval1 state then evalTLoop' (eval1 $ ifToBool $ eval1 state)
                                     else eval1 state
                                   | otherwise = evalTLoop' (eval1 state)

evalLoop :: Program -> IO()
evalLoop e = evalLoop' [toState e] $ toState e
  where evalLoop' p state@(e,env,k) | (eval1 state == head p) && null k = printpixel $ fromState state
                                    | otherwise = evalLoop' (state:p) (eval1 state)

egg :: Matrix Int
egg = fromLists [[1,1,1,1],[1,1,1,1],[1,1,1,1],[1,1,1,1]]

egg2 :: Matrix Int
egg2 = fromLists [[0,1],[1,0]]

egg3 :: Matrix Int
egg3 = fromLists [[1,0],[0,1]]

egg4 :: Matrix Int
egg4 = fromLists [[0,0],[0,0]]

toState :: Program -> State
toState e = (Progr e, [("t0", MTile egg),("t1", MTile egg2),("t2", MTile egg3),("t3", MTile egg4)], [])

fromState :: State -> Exp
fromState (e, [], k) = error "No parse"
fromState (e, (f:fs), k) = e1 where e1 = snd f

unparse :: Exp -> String
unparse (MTile a) = prettyMatrix a
unparse _ = "Unknown"
