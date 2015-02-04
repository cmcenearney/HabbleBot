module HabbleBot.All where

import qualified Data.Sequence as Seq
import Data.DAWG.Static

type Board = Seq.Seq(Seq.Seq(Int))

data Trie = Empty | Map Char Trie