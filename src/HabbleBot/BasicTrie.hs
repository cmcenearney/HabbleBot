module HabbleBot.BasicTrie where

import Data.Maybe
import qualified Data.Map as M

{-
A simple trie
-}
data Trie = Leaf
          | Word (M.Map Char Trie)
          | Prefix (M.Map Char Trie) 
            deriving (Show)

emptyTrie :: Trie
emptyTrie = Prefix (M.empty :: M.Map Char Trie)

insertWord :: [Char] -> Trie -> Trie
insertWord [] (Prefix m) = Word m
insertWord [] (Word m) = Word m
insertWord [] Leaf = Leaf
insertWord (c:cs) (Word m)
  | M.member c m = Word (M.adjust (\t -> insertWord cs t) c m)
  | otherwise    = Word (M.insert c (insertWord cs (emptyTrie)) m )
insertWord (c:cs) (Prefix m)
  | M.member c m = Prefix (M.adjust (\t -> insertWord cs t) c m)
  | otherwise    = Prefix (M.insert c (insertWord cs (emptyTrie)) m )

isWord :: [Char] -> Trie -> Bool
isWord [] Leaf = True
isWord (c:cs) Leaf = False
isWord [] (Word m) = True
isWord [] (Prefix m) = False
isWord (c:cs) (Word m)
  | M.member c m = isWord cs (fromJust(M.lookup c m))
  | otherwise    = False
isWord (c:cs) (Prefix m)
  | M.member c m = isWord cs (fromJust(M.lookup c m))
  | otherwise    = False

isPrefix :: [Char] -> Trie -> Bool
isPrefix [] _ = True
isPrefix (c:cs) (Prefix m)
  | M.member c m = isPrefix cs (fromJust(M.lookup c m))
  | otherwise    = False
isPrefix (c:cs) (Word m)
  | M.member c m = isPrefix cs (fromJust(M.lookup c m))
  | otherwise    = False

prefixSubMap :: [Char] -> Trie -> Maybe Trie
prefixSubMap [] t = Just t
prefixSubMap (c:cs) (Word m)
  | M.member c m = prefixSubMap cs (fromJust(M.lookup c m))
  | otherwise    = Nothing
prefixSubMap (c:cs) (Prefix m)
  | M.member c m = prefixSubMap cs (fromJust(M.lookup c m))
  | otherwise    = Nothing

fromList :: [String] -> Trie
fromList words = foldl (\trie word -> insertWord word trie) emptyTrie words



