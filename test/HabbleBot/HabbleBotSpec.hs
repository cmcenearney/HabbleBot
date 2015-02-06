module HabbleBot.HabbleBotSpec  (main, spec) where

import Data.List
import Test.Hspec
import Test.QuickCheck
import SpecHelper


main :: IO ()
main = hspec spec

spec :: Spec
spec = do

  describe "Spec" $ do  

    context "context" $ do

      it "assertion" $ do
        True`shouldBe` True


    