module SpecHelper
    ( module Test.Hspec
    , module HabbleBot.All
    , parseChar, parseRow, parseBoard
    ) where

import Test.Hspec
import HabbleBot.All
import qualified Data.Vector as V


emptyBoard       = parseBoard empty
allAsBoard       = parseBoard allAs
oneABoard        = parseBoard oneA
twoWordsBoard    = parseBoard twoWords
threeWordsBoard  = parseBoard threeWords
fourWordsBoard   = parseBoard fourWords
fiveWordsBoard   = parseBoard fiveWords
sixWordsBoard    = parseBoard sixWords


parseBoard :: String -> Board 
parseBoard l = V.fromList $ map parseRow $ take 15 $ lines l

parseRow :: String -> Row 
parseRow s = V.fromList $ map parseChar $ filter (\c -> c /= ' ') $ take 29 s

parseChar :: Char -> Maybe Char
parseChar '_' = Nothing
parseChar c = Just c 

{-
TODO: read board states from files
-}
--fromFile :: IO String
--fromFile = do
--  input <- readFile "/Users/colinmcenearney/dev/HabbleBot/test/resources/board_states/empty.txt" 
--  lns <- lines input
--  return lns!!0
empty = "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 0\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 1\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 2\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 3\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 4\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 5\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 6\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 7\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 8\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 9\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ a\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ b\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ c\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ d\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ e"

allAs = "A A A A A A A A A A A A A A A 0\n\
\A A A A A A A A A A A A A A A 1\n\
\A A A A A A A A A A A A A A A 2\n\
\A A A A A A A A A A A A A A A 3\n\
\A A A A A A A A A A A A A A A 4\n\
\A A A A A A A A A A A A A A A 5\n\
\A A A A A A A A A A A A A A A 6\n\
\A A A A A A A A A A A A A A A 7\n\
\A A A A A A A A A A A A A A A 8\n\
\A A A A A A A A A A A A A A A 9\n\
\A A A A A A A A A A A A A A A a\n\
\A A A A A A A A A A A A A A A b\n\
\A A A A A A A A A A A A A A A c\n\
\A A A A A A A A A A A A A A A d\n\
\A A A A A A A A A A A A A A A e"

oneA = "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 0\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 1\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 2\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 3\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 4\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 5\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 6\n\
\_ _ _ _ _ _ _ A _ _ _ _ _ _ _ 7\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 8\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 9\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ a\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ b\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ c\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ d\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ e"


twoWords = "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 0\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 1\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 2\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 3\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 4\n\
\_ _ _ _ _ _ _ _ _ P _ _ _ _ _ 5\n\
\_ _ _ _ _ _ _ _ _ O _ _ _ _ _ 6\n\
\_ _ _ _ _ S W E E T _ _ _ _ _ 7\n\
\_ _ _ _ _ _ _ _ _ A _ _ _ _ _ 8\n\
\_ _ _ _ _ _ _ _ _ T _ _ _ _ _ 9\n\
\_ _ _ _ _ _ _ _ _ O _ _ _ _ _ a\n\
\_ _ _ _ _ _ _ _ _ E _ _ _ _ _ b\n\
\_ _ _ _ _ _ _ _ _ S _ _ _ _ _ c\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ d\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ e"

threeWords = "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 0\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 1\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 2\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 3\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 4\n\
\_ _ _ _ _ _ _ _ _ P _ _ _ _ _ 5\n\
\_ _ _ _ _ _ _ _ _ O _ _ _ _ _ 6\n\
\_ _ _ _ _ S W E E T _ _ _ _ _ 7\n\
\_ _ _ _ _ _ _ _ _ A _ _ _ _ _ 8\n\
\_ _ _ _ _ _ _ _ _ T _ _ _ _ _ 9\n\
\_ _ _ _ _ _ _ _ _ O _ _ _ _ _ a\n\
\_ _ _ _ _ _ _ _ _ E _ _ _ _ _ b\n\
\_ _ _ _ _ _ _ _ _ S U P E R _ c\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ d\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ e"

fourWords = "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 0\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 1\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 2\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 3\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 4\n\
\_ _ _ _ _ M _ _ _ P _ _ _ _ _ 5\n\
\_ _ _ _ _ A _ _ _ O _ _ _ _ _ 6\n\
\_ _ _ _ _ S W E E T _ _ _ _ _ 7\n\
\_ _ _ _ _ H _ _ _ A _ _ _ _ _ 8\n\
\_ _ _ _ _ E _ _ _ T _ _ _ _ _ 9\n\
\_ _ _ _ _ D _ _ _ O _ _ _ _ _ a\n\
\_ _ _ _ _ _ _ _ _ E _ _ _ _ _ b\n\
\_ _ _ _ _ _ _ _ _ S U P E R _ c\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ d\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ e"

fiveWords = "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 0\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 1\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 2\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 3\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 4\n\
\_ _ _ _ _ M _ _ _ P _ _ _ _ _ 5\n\
\_ _ _ _ _ A _ _ T O _ _ _ _ _ 6\n\
\_ _ _ _ _ S W E E T _ _ _ _ _ 7\n\
\_ _ _ _ _ H _ _ P A _ _ _ _ _ 8\n\
\_ _ _ _ _ E _ _ I T _ _ _ _ _ 9\n\
\_ _ _ _ _ D _ _ D O _ _ _ _ _ a\n\
\_ _ _ _ _ _ _ _ _ E _ _ _ _ _ b\n\
\_ _ _ _ _ _ _ _ _ S U P E R _ c\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ d\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ e"

sixWords = "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 0\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 1\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 2\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 3\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 4\n\
\_ _ _ _ _ M _ _ _ P _ _ _ _ _ 5\n\
\_ _ _ _ _ A _ _ T O _ _ _ _ _ 6\n\
\_ _ _ _ _ S W E E T _ _ _ _ _ 7\n\
\_ _ _ _ _ H _ _ P A _ _ _ _ _ 8\n\
\_ _ _ _ _ E _ _ I T _ _ _ _ _ 9\n\
\_ _ _ _ _ D _ A D O R N _ _ _ a\n\
\_ _ _ _ _ _ _ _ _ E _ _ _ _ _ b\n\
\_ _ _ _ _ _ _ _ _ S U P E R _ c\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ d\n\
\_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ e"
