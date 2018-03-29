import System.IO
import Data.List.Split
import Control.Monad
import qualified Data.Map as M

process file =
    let lines'  = lines file
        lines'' = map (splitOn "\t") lines'
        artNsng (s:a:_) = (a, s)
        artistsNsongs = map artNsng lines''
        dict :: M.Map String [String]
        dict = foldr (\(a, s) m -> M.insertWith (++) a [s] m) M.empty artistsNsongs
    in M.toList dict

preetyPrint dict = do
    forM_ dict (\(a, songs) -> do
        putStrLn $ a ++ ":"
        mapM_ (\s -> putStrLn $ " -> " ++ s) songs
        putStrLn ""
        )

run :: IO ()
run = preetyPrint =<< process <$> readFile "Heavy Metal 333.txt"