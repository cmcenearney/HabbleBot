{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE TypeFamilies #-}

module HabbleBot.ScrabbleConfig.Spaces where

import HabbleBot.Board 
import Data.Vector
import Data.List
import GHC.Exts

instance IsList (Vector a) where
  type Item (Vector a) = a
  fromList = Data.Vector.fromList
  toList = Data.Vector.toList

getSpaceType :: Point -> SpaceType
getSpaceType (x,y) = (board!y)!x

row0  = [TrplWrd, Plain, Plain, DblLtr, Plain, Plain, Plain, TrplWrd, Plain, Plain, Plain, DblLtr, Plain, Plain, TrplWrd] :: Vector SpaceType
row1  = [Plain, DblWrd, Plain, Plain, Plain, TrplLtr, Plain, Plain, Plain, TrplLtr, Plain, Plain, Plain, DblWrd, Plain] :: Vector SpaceType
row2  = [Plain, Plain, DblWrd, Plain, Plain, Plain, DblLtr, Plain, DblLtr, Plain, Plain, Plain, DblWrd, Plain, Plain] :: Vector SpaceType
row3  = [DblLtr, Plain, Plain, DblWrd, Plain, Plain, Plain, DblLtr, Plain, Plain, Plain, DblWrd, Plain, Plain, DblLtr] :: Vector SpaceType
row4  = [Plain, Plain, Plain, Plain, DblWrd, Plain, Plain, Plain, Plain, Plain, DblWrd, Plain, Plain, TrplLtr, Plain] :: Vector SpaceType
row5  = [Plain, TrplLtr, Plain, Plain, Plain, TrplLtr, Plain, Plain, Plain, TrplLtr, Plain, Plain, Plain, Plain, Plain] :: Vector SpaceType
row6  = [Plain, Plain, DblLtr, Plain, Plain, Plain, DblLtr, Plain, DblLtr, Plain, Plain, Plain, DblLtr, Plain, Plain] :: Vector SpaceType
row7  = [TrplWrd, Plain, Plain, DblLtr, Plain, Plain, Plain, DblWrd, Plain, Plain, Plain, DblLtr, Plain, Plain, TrplWrd] :: Vector SpaceType
row8  = [Plain, Plain, DblLtr, Plain, Plain, Plain, DblLtr, Plain, DblLtr, Plain, Plain, Plain, DblLtr, Plain, Plain] :: Vector SpaceType
row9  = [Plain, TrplLtr, Plain, Plain, Plain, TrplLtr, Plain, Plain, Plain, TrplLtr, Plain, Plain, Plain, TrplLtr, Plain] :: Vector SpaceType
row10 = [Plain, Plain, Plain, Plain, DblWrd, Plain, Plain, Plain, Plain, Plain, DblWrd, Plain, Plain, Plain, Plain] :: Vector SpaceType
row11 = [DblLtr, Plain, Plain, DblWrd, Plain, Plain, Plain, DblLtr, Plain, Plain, Plain, DblWrd, Plain, Plain, DblLtr] :: Vector SpaceType
row12 = [Plain, Plain, DblWrd, Plain, Plain, Plain, DblLtr, Plain, DblLtr, Plain, Plain, Plain, DblWrd, Plain, Plain] :: Vector SpaceType
row13 = [Plain, DblWrd, Plain, Plain, Plain, TrplLtr, Plain, Plain, Plain, TrplLtr, Plain, Plain, Plain, DblWrd, Plain ] :: Vector SpaceType
row14 = [TrplWrd, Plain, Plain, DblLtr, Plain, Plain, Plain, TrplWrd, Plain, Plain, Plain, DblLtr, Plain, Plain, TrplWrd] :: Vector SpaceType

board = [row0, row1, row2, row3, row4, row5, row6, row7, row8, row9, row10, row11, row12, row13, row14] :: Vector (Vector SpaceType)