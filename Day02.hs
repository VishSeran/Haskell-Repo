import Control.Monad.RWS (MonadState(put))
factors :: Integral a => a -> [a]
factors n = [x | x <-[1..n] , n `mod` x == 0 ]

pairs :: [b] -> [(b, b)]
pairs xs = zip xs (tail xs)


sorted :: Ord a => [a] -> Bool
sorted xs = and [x <= y | (x,y) <- pairs xs]

main :: IO ()
main = do
    let squares = [x^2 | x <- [1..10]]
    putStrLn $ "The squares of numbers from 1 to 10 are: " ++ show squares
    putStrLn $ "The factors of 28 are: " ++ show (factors 28)
    putStrLn $ "the pairs of the list [1,2,3,4] are: " ++ show (pairs [1,2,3,4])
    putStrLn $ "Is the list [1,2,2,3,4] sorted? " ++ show (sorted [1,2,3,4])

