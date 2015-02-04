module HabbleBot.All where

import qualified Data.Map as M

{-
several possible ways to approach this type - is a recursive ADT the way to go?
data Trie = Leaf Bool | Node Bool (Map Char Trie)
data Trie = Trie Bool (Maybe (Map Char Trie))
data Trie = Trie Bool (Map Char Trie)
-}

data Tree a = EmptyTree | Node a (Tree a) (Tree a) 
  deriving (Show)

singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
  | x == a = Node x left right
  | x < a  = Node a (treeInsert x left) right
  | x > a  = Node a left (treeInsert x right)


data Trie = Leaf Bool | Trie Bool (M.Map Char Trie)
  deriving (Show)


insertChar :: Char -> Trie -> Trie
insertChar c (Leaf b) = Trie b (M.singleton c (Leaf False))
insertChar c node@(Trie b m) 
  | M.member c m = node
  | otherwise  = Trie b (M.insert c (Leaf False) m) 

insTerminalChar :: Char -> Trie -> Trie
insTerminalChar c (Leaf b) = Trie b (M.singleton c (Leaf True))
insTerminalChar c (Trie b m) = Trie b (M.insert c (Leaf True) m) 

insertWord :: [Char] -> Trie -> Trie
insertWord [c] t = insTerminalChar c t
insertWord (c:cs) (Leaf b) = Trie b (M.singleton c (insertWord cs (Leaf False)))
insertWord (c:cs) (Trie b m)
  | M.member c m = Trie b (M.adjust (\t -> insertWord cs t) c m)
  | otherwise    = Trie b (M.insert c (insertWord cs (Leaf False)) )