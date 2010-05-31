import System.Environment (getArgs)

interactWith function inputFile outputFile = do
  input <- readFile inputFile
  writeFile outputFile (function input)

main = mainWith myFunction
  where mainWith function = do
          args <- getArgs
          case args of
            [input,output] -> interactWith function input output
            _ -> putStrLn "error: exactly two arguments needed"

        myFunction = firstLines

firstLines s = unlines firstWords
               where firstWords = map firstWord (lines s)
                     firstWord s | null s    = ""
                                 | otherwise = head (words s)
