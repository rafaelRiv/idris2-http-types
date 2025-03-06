-- | Query strings generally have the following form: @"key1=value1&key2=value2"@
--
-- >>> renderQuery False [("key1", Just "value1"), ("key2", Just "value2")]
-- "key1=value1&key2=value2"
--
-- But if the value of @key1@ is 'Nothing', it becomes: @key1&key2=value2@
--
-- >>> renderQuery False [("key1", Nothing), ("key2", Just "value2")]
-- "key1&key2=value2"
--
-- This module also provides type synonyms and functions to handle queries
-- that do not allow/expect keys without values ('SimpleQuery'), handle
-- queries which have partially escaped characters
module Network.HTTP.Types.URI

-- | An item from the query string, split up into two parts.
--
-- The second part should be 'Nothing' if there was no key-value
-- separator after the query item name.
public export
QueryItem : Type
QueryItem = (String, Maybe String)

-- | A sequence of 'QueryItem's.
public export
Query : Type
Query = List QueryItem

-- | Like Query, but with 'Text' instead of 'B.ByteString' (UTF8-encoded).
public export
QueryText : Type
QueryText = List (String, Maybe String)
