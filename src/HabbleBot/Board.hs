module HabbleBot.Board where

import Data.Vector hiding ((++))
import qualified Data.Vector as V 
import Data.Maybe
import HabbleBot.BasicTrie

type Board = Vector(Row)
type Row   = Vector(Maybe Tile)
type Tile  = Char
type Point = (Int, Int)
data Direction = Down | Across 
  deriving (Eq, Ord, Show, Read)
data SpaceType = Plain | DblWrd | DblLtr | TrplWrd | TrplLtr  
  deriving (Eq, Show)

boardSize = 15 :: Int
numTiles  = 7  :: Int

getSqr :: Board -> Point -> Maybe Char
getSqr b (x,y) = (b!y)!x

startableSquares :: Row -> [Int]
startableSquares row = indexSqrs [] row 0
  where
    indexSqrs :: [Int] -> Row -> Int -> [Int]
    indexSqrs is r i
      | i == V.length r - 1 = is
      | startable r i       = indexSqrs (is ++ [i]) r (i+1)
      | otherwise           = indexSqrs is r (i+1)

startable :: Row -> Int -> Bool
startable r i = 
  case r!i of
    Nothing -> checkBehind r i && checkAhead r i 
    Just s  -> checkBehind r i 

checkAhead :: Row -> Int -> Bool
checkAhead r i =
  let j = min (numTiles+1)  (boardSize - i)
  in V.any isJust $ V.slice i j r 

checkBehind :: Row -> Int -> Bool
checkBehind _ 0 = True
checkBehind r i = r!(i-1) == Nothing


