-- game.hs
-- because I *LOVE* lower-case filenames!!!

module Main where

-- creating Character datum
data Character = Character  { name      :: String
                            , alignment :: Alignment
                            } deriving (Show)

data Alignment  = Good
                | Neutral
                | Evil deriving (Show)

-- brute-forcing it... cause i'm like that!
setAlignment :: Char -> Alignment
setAlignment 'G'        = Good
setAlignment 'g'        = Good
setAlignment 'N'        = Neutral
setAlignment 'n'        = Neutral
-- and because everyone knows if you dont follow the rules, you're evil!
setAlignment _          = Evil

main = do putStrLn "Hello World"
          putStrLn "Please enter your name:"
          n <- getLine
          putStrLn "Choose: (G)ood, (N)eutral or (E)vil"
          al <- getChar
          let c = Character { name = n
                            , alignment = setAlignment al }
          putStrLn ("Your name is: " ++ name c)
          putStrLn ("Your alignment is: " ++ show (alignment c))
