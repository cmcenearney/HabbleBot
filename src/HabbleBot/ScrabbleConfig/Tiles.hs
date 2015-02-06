module HabbleBot.ScrabbleConfig.Tiles where

import qualified Data.Map as M
import HabbleBot.Board

freq :: Tile -> Int
freq 'E' = 12
freq 'A' = 9
freq 'I' = 9
freq 'O' = 8
freq 'N' = 6
freq 'R' = 6
freq 'T' = 6
freq 'L' = 4
freq 'S' = 4
freq 'U' = 4
freq 'D' = 4
freq 'G' = 3
freq 'B' = 2
freq 'C' = 2
freq 'M' = 2
freq 'P' = 2
freq 'F' = 2
freq 'H' = 2
freq 'V' = 2
freq 'W' = 2
freq 'Y' = 2
freq 'K' = 1
freq 'J' = 1
freq 'X' = 1
freq 'Q' = 1
freq 'Z' = 1

points :: Tile -> Int
points 'E' = 12
points 'A' = 9
points 'I' = 9
points 'O' = 8
points 'N' = 6
points 'R' = 6
points 'T' = 6
points 'L' = 4
points 'S' = 4
points 'U' = 4
points 'D' = 4
points 'G' = 3
points 'B' = 2
points 'C' = 2
points 'M' = 2
points 'P' = 2
points 'F' = 2
points 'H' = 2
points 'V' = 2
points 'W' = 2
points 'Y' = 2
points 'K' = 1
points 'J' = 1
points 'X' = 1
points 'Q' = 1
points 'Z' = 1
