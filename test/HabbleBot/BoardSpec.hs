module HabbleBot.BoardSpec  (main, spec) where

import Data.List
import Test.Hspec
import Test.QuickCheck
import SpecHelper


main :: IO ()
main = hspec spec

spec :: Spec
spec = do

  describe "BoardSpec" $ do  

    context "getStartableSquares" $ do

      it "row: '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _'" $ do
        startableSquares (parseRow "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _") `shouldBe` []
      
      it "row: 'A _ _ _ _ _ _ _ _ _ _ _ _ _ _'" $ do
        startableSquares (parseRow "A _ _ _ _ _ _ _ _ _ _ _ _ _ _") `shouldBe` [0]
      
      it "row: '_ A _ _ _ _ _ _ _ _ _ _ _ _ _'" $ do
        startableSquares (parseRow "_ A _ _ _ _ _ _ _ _ _ _ _ _ _") `shouldBe` [0,1]
      
      it "row: '_ _ _ _ _ _ _ A _ _ _ _ _ _ _'" $ do
        startableSquares (parseRow "_ _ _ _ _ _ _ A _ _ _ _ _ _ _") `shouldBe` [0,1,2,3,4,5,6,7]

      it "row: '_ _ _ _ _ _ _ A _ _ _ _ _ _ A'" $ do
        startableSquares (parseRow "_ _ _ _ _ _ _ A _ _ _ _ _ _ A") `shouldBe` [0,1,2,3,4,5,6,7,9,10,11,12,13]

      it "row: '_ _ _ _ _ _ _ _ _ _ _ _ _ _ A'" $ do
        startableSquares (parseRow "_ _ _ _ _ _ _ _ _ _ _ _ _ _ A") `shouldBe` [7,8,9,10,11,12,13]        

      it "row: 'A _ _ A _ A _ A _ _ A _ _ _ A'" $ do
        startableSquares (parseRow "A _ _ A _ A _ A _ _ A _ _ _ A") `shouldBe` [0,2,3,5,7,9,10,12,13]

    