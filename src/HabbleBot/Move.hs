module HabbleBot.Move where

import HabbleBot.BasicTrie
import HabbleBot.Board

data Move = Move Point Direction String
  deriving (Eq, Ord, Show, Read)

scoreMove :: Move -> Board -> Either String Int
scoreMove = undefined

