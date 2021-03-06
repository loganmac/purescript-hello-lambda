module Lambda where

import Prelude
import Control.Monad.Except (runExcept)
import Data.Either (Either(..))
import Simple.JSON (readJSON, writeJSON)

type Event =
  { name :: String }

type Response =
  { greeting :: String }

handler :: String -> {statusCode :: String, body:: String}
handler event = do
  case runExcept $ readJSON event of
    Right (x :: Event) ->
      { statusCode: "200"
      , body: writeJSON { greeting : "Hello, " <> x.name <> "!" }
      }
    Left e ->
      { statusCode: "400"
      , body: """{"error": "Couldn't parse JSON."}"""
      }
