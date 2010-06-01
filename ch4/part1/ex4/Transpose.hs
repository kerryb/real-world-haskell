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

        myFunction = transpose

transpose :: String -> String
transpose s = unlines transposedLines
            where transposedLines = reverse (fst (transposeLines ([], lines s)))

transposeLines :: ([String], [String]) -> ([String], [String])
transposeLines (news, olds) | all null olds = (news, [])
                            | otherwise     = transposeLines (next_news, next_olds)
                            where next_news = (map head_or_empty olds) : news
                                  next_olds = map tail_or_empty olds
                                  head_or_empty x | null x    = ' '
                                                  | otherwise = head x
                                  tail_or_empty x | null x    = ""
                                                  | otherwise = tail x
