{-# language TemplateHaskell #-}

module Types where

import Data.Int
import Data.Text

import Data.Aeson
import Data.Aeson.TH

-- program

data MyType = MyType
    { myId :: Int64
    , myTitle :: Text
    , myCreator :: Maybe Text
    }
    deriving Show

deriveJSON defaultOptions ''MyType
