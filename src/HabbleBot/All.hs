module HabbleBot.All where

import qualified Data.Sequence as Seq
--import Data.DAWG.Static

type Board = Seq.Seq(Row)
type Row = Seq.Seq(Maybe Char)

boardSize = 15 :: Int

emptyRow :: Seq.Seq(Maybe Char)
emptyRow = Seq.replicate boardSize Nothing 

emptyBoard :: Board
emptyBoard = Seq.replicate boardSize emptyRow

getSqr :: Board -> (Int, Int) -> Maybe Char
getSqr b (x,y) = Seq.index (Seq.index b y) x

--parseBoardFixture :: String -> Board