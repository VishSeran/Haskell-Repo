{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Redundant bracket" #-}
import Prelude hiding (and)

and :: [Bool] -> Bool
and [] = True
and (x : xs) = x && and xs

main:: IO()
main = do
    let list1 = [True, True, False, True]
    putStrLn $ "output of and function: " ++ show (and (list1));