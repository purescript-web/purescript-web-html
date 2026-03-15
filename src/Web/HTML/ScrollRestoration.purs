module Web.HTML.ScrollRestoration where

import Prelude

import Data.Maybe (Maybe(..))

data ScrollRestoration
  = Auto
  | Manual

derive instance eqScrollRestoration :: Eq ScrollRestoration
derive instance ordScrollRestoration :: Ord ScrollRestoration

instance showScrollRestoration :: Show ScrollRestoration where
  show = case _ of
    Auto -> "Auto"
    Manual -> "Manual"

parse :: String -> Maybe ScrollRestoration
parse = case _ of
  "auto" -> Just Auto
  "manual" -> Just Manual
  _ -> Nothing

print :: ScrollRestoration -> String
print = case _ of
  Auto -> "auto"
  Manual -> "manual"
