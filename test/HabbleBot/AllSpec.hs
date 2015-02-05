module HabbleBot.AllSpec  (main, spec) where

import Data.List
import Test.Hspec
import Test.QuickCheck
import HabbleBot.All 
import Data.Char
import System.Directory
import System.FilePath ((</>))
import SpecHelper
 
getAbsDirectoryContents :: FilePath -> IO [FilePath]
getAbsDirectoryContents dir = getDirectoryContents dir >>= mapM (canonicalizePath . (dir </>))


{-
spec runner
-}

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "BasicSpec" $ do  
    context "with some context" $ do
      it "should do some shouldBe" $ do
        True `shouldBe` True



