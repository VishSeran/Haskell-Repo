{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Redundant bracket" #-}
import Prelude hiding (and)


and :: [a] -> Bool
and [] = True


