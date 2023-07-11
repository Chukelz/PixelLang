--Authors: Chukelu Egboga, Renee Gregorio-de Souza, Precious Durojaiye
-- Some of the code was implemented from Julian Rathke's solution for exercise 5


import Pixels
import PixelGrammar
import PixelTypes
import PixelEval
import System.Environment
import Control.Exception
import System.IO
import Data.List

main :: IO()
main = catch main' noParse

main' = do args <- getArgs
           fileName <- if null args then do getLine else pure (head args)
           content <- readFile fileName
           let parseOutput = parsePixels (alexScanTokens content)
           let typedOutput = addStart [("t1",PTile)] parseOutput  --might need to change addstart
           let result = evalLoop (parseOutput)
           putStrLn ("Output is: ")
           putStrLn ("         ")
           result
           putStrLn ("         ")
           

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               putStrLn "----------------"
               hPutStrLn stderr err
               putStrLn "----------------"
               main
