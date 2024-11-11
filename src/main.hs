-- Write printAMessage here
printAMessage :: Show a => a -> IO ()
printAMessage a = do print a

-- Write division here
division :: Double -> Double -> Maybe Double
division x y
    | x == y = Nothing
    | otherwise = Just (x / y)

-- Write factorial here
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

-- Write factList here
factList :: Int -> [Int]
factList n = map factorial [1..n]

-- Write merge here
merge :: [Int] -> [Int] -> [Int]
merge xs [] = xs
merge [] ys = ys
merge (x : xs) (y : ys)
    | x <= y = x : merge xs (y : ys)
    | otherwise = y : merge (x : xs) ys

main = print (merge [1,3,5,7] [0,2,4,6,8])
--print "Test" -- Replace this with your testing code