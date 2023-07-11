module PixelTypes where
import PixelGrammar

type TypeEnvironment = [(String,PixelType)]
getVar key envs = lookup key envs 


-- adds an binding to the type environment
addBinding :: a -> [a] -> [a]
addBinding bs envs = (bs:envs)

-- gets type from Just
fromJust :: Maybe a -> a 
fromJust Nothing = error "Type binding is not available"
fromJust (Just x) = x

--evaluation of the types of the program
addStart:: TypeEnvironment -> Program -> PixelType
addStart tenv (Start exp) = typeOf tenv exp



-- type checks for every type in the language and handles error
typeOf :: TypeEnvironment -> Exp -> PixelType
typeOf tenv (Int n) = PInt
typeOf tenv (Booleans (PFalse)) = PBool
typeOf tenv (Booleans (PTrue))  = PBool
typeOf tenv (Tile m) = PTile
typeOf tenv (MTile m) = PTile
typeOf tenv (TileVar t) = fromJust (getVar t tenv) 
typeOf tenv (FileName f)  = PTile

typeOf tenv (Pos e1 e2) | (t1 == PInt) && (t2 == PInt) = TPos t1 t2
    where (t1,t2) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (Operators (Read e)) | t1 == PTile = t1
    where t1 = typeOf tenv e

typeOf tenv (Operators (Fst e1)) = t1
    where (TPos t1 t2) = typeOf tenv e1

typeOf tenv (Operators (Snd e2)) = t2
    where (TPos t1 t2) = typeOf tenv e2

typeOf tenv (Operators (Rotate e1 e2 )) | t2 == PTile = t2
    where (PInt, t2) = (typeOf tenv e1 ,typeOf tenv e2)

typeOf tenv (Operators (ReflectX e1 )) | t1 == PTile = t1
    where t1 = typeOf tenv e1

typeOf tenv (Operators (ReflectY e1 )) | t1 == PTile = t1
    where t1 = typeOf tenv e1

typeOf tenv (Operators (RepeatX e1 e2)) | t2 == PTile = t2
    where (PInt,t2) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (Operators (RepeatY e1 e2)) | t2 == PTile = t2
    where (PInt,t2) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (Operators (HJoin e1 e2)) | (PTile, PTile) == (typeOf tenv e1, typeOf tenv e2) =  PTile
typeOf tenv (Operators (VJoin e1 e2)) | (PTile, PTile) == (typeOf tenv e1, typeOf tenv e2) =  PTile
typeOf tenv (Operators (PAnd e1 e2)) | (PTile, PTile) == (typeOf tenv e1, typeOf tenv e2) =  PTile
typeOf tenv (Operators (Mask e1 e2)) | (PTile, PTile) == (typeOf tenv e1, typeOf tenv e2) =  PTile

typeOf tenv (Operators (Cut e1 e2 e3 e4)) | t1 == PTile = t1
    where (t1, (TPos t2 t3), PInt, PInt) = (typeOf tenv e1, typeOf tenv e2, typeOf tenv e3, typeOf tenv e4)

typeOf tenv (Operators (Paste e1 e2 e3)) | (t2 == PTile) &&  (t3 == PTile) = t2
    where ((TPos t t1), t2, t3) = (typeOf tenv e1, typeOf tenv e2, typeOf tenv e3)

--check that e has type u in environment with x having type Ptile
-- typeOf tenv (Operators (Lambda x e))  = Fun PTile u
--     where u = typeOf (addBinding (x,PTile) tenv) e

-- check that eb has type bool and that e1 and e2 are of the same types
typeOf tenv (Operators (If eb e1 e2)) | t2 == t3 = t2
    where (PBool, t2,t3) = (typeOf tenv eb, typeOf tenv e1, typeOf tenv e2)

--check that e2 has type t2 in environment with e1 having type t1
typeOf tenv (Operators (AEquals x e2)) = t2
    where t2 = typeOf (addBinding (x,PTile) tenv) e2

typeOf tenv (Operators (Scale e1 e2)) | t2 == PTile = t2
    where (PInt,t2) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (Operators (Iterate e1 e2)) | t1 == PTile = t1
    where (t1,(TPos t2 t3)) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (Operators (Fill e1 e2 )) | t2 == PTile = t2
    where (PInt,t2) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (Operators (Blank e1 )) | t1 == PTile = t1
    where t1 = typeOf tenv e1

typeOf tenv (Operators (Print e1 )) | t1 == PTile = t1
    where t1 = typeOf tenv e1

typeOf tenv (Operators (PNot e1 )) | t1 == PTile = t1
    where t1 = typeOf tenv e1

typeOf tenv (Operators (Plus e1 e2)) | (PInt, PInt) == (typeOf tenv e1, typeOf tenv e2) =  PInt
typeOf tenv (Operators (Minus e1 e2)) | (PInt, PInt) == (typeOf tenv e1, typeOf tenv e2) =  PInt
typeOf tenv (Operators (Divide e1 e2)) | (PInt, PInt) == (typeOf tenv e1, typeOf tenv e2) =  PInt
typeOf tenv (Operators (Multiply e1 e2)) | (PInt, PInt) == (typeOf tenv e1, typeOf tenv e2) =  PInt
typeOf tenv (Booleans (Gt e1 e2)) | (PInt, PInt) == (typeOf tenv e1, typeOf tenv e2) =  PBool
typeOf tenv (Booleans (Lt e1 e2)) | (PInt, PInt) == (typeOf tenv e1, typeOf tenv e2) =  PBool
typeOf tenv (Booleans (LtEquals e1 e2)) | (PInt, PInt) == (typeOf tenv e1, typeOf tenv e2) =  PBool
typeOf tenv (Booleans (GtEquals e1 e2)) | (PInt, PInt) == (typeOf tenv e1, typeOf tenv e2) =  PBool
typeOf tenv (Booleans (CompareEquals e1 e2)) | (PInt, PInt) == (typeOf tenv e1, typeOf tenv e2) =  PBool
typeOf tenv (Booleans (NotEqual e1 e2)) | (PInt, PInt) == (typeOf tenv e1, typeOf tenv e2) =  PBool
typeOf tenv (Booleans (And e1 e2)) | (PBool,PBool) == (typeOf tenv e1, typeOf tenv e2) = PBool
typeOf tenv (Booleans (Or e1 e2)) | (PBool,PBool) == (typeOf tenv e1, typeOf tenv e2) = PBool


typeOf tenv _ = error "Type Error"


-- function for printing the results of typecheck
unParseType :: PixelType -> String
unParseType PInt = "Int"
unParseType PBool = "Bool"
unParseType PTile = "PTile"
unParseType (Fun t1 t2) = (unParseType t1) ++ "->" ++ (unParseType t2)
unParseType (TPos t1 t2) = "(" ++ (unParseType t1) ++ "," ++ (unParseType t2) ++ ")"








