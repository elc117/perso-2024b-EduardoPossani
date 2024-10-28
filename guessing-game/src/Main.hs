module Main where

guessingGame :: Int -> Int -> IO ()
guessingGame low high
  | low > high = putStrLn "Hmm... Parece que algo deu errado!"
  | low == high = putStrLn $ "O seu número é " ++ show low ++ "!"
  | otherwise = do
      let mid = (low + high) `div` 2
      putStrLn $ "O seu número é maior, menor ou igual a " ++ show mid ++ "? (Digite 'maior', 'menor' ou 'igual')"
      response <- getLine
      case response of
        "maior" -> guessingGame (mid + 1) high
        "menor" -> guessingGame low (mid - 1)
        "igual" -> putStrLn $ "Acertei! O número é " ++ show mid ++ "!"
        _       -> do
          putStrLn "Entrada inválida. Tente novamente."
          guessingGame low high

main :: IO ()
main = do
  putStrLn "Pense em um número entre 1 e 100, e eu tentarei adivinhar!"
  guessingGame 1 100
