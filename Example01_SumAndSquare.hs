sumAndSquare :: IO ()
sumAndSquare = do

    --step 1: Generate numbers from 1 to 100
    let  numbers = [1..100]
    putStrLn $ "Numbers from 1 to 100: " ++ show numbers

    let divisible = [x | x <- numbers,  x `mod` 3 == 0 || x `mod` 5 == 0] 
    putStrLn $"Numbers divide by 3 and 5: " ++ show divisible

    let total = sum divisible
    putStrLn $"Sum of divisibles: " ++ show total

    let squareTotal = sum (map(^2) divisible)
    putStrLn $"Sum of squares of divisibles: " ++ show squareTotal

    putStrLn $"Final as a tuple: (" ++ show total ++ "," ++ show squareTotal ++ ")"


main :: IO ()
main = sumAndSquare