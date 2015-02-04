HabbleBot
=========

A Haskell Scrabble solver.  Maybe it will have a better name someday

Built with cabal

```
cabal install --dependencies-only
cabal configure
cabal build
```

now you can test with 

```
cabal test
```

or run individual test files (with pretty output)

```
runhaskell -isrc -itest test/HabbleBot/BasicTrieSpec.hs
```