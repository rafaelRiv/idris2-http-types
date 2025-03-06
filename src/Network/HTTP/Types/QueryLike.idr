-- | Some type classes to make more general functions when handling query strings.
module Network.HTTP.Types.QueryLike 

import Network.HTTP.Types.URI
-- | Types which can, and commonly are, converted to 'Query' are in this class.
--
-- You can use lists of simple key value pairs, with 'B.ByteString' (strict, or lazy:
-- 'L.ByteString'), 'T.Text', or 'String' as the key/value types. You can also have the value
-- type lifted into a Maybe to support keys without values; and finally it is possible to put
-- each pair into a Maybe for key-value pairs that aren't always present.
--
-- @since 0.7.0
public export
interface QueryLike a where
    -- | Convert to 'Query'.
    toQuery : a -> Query

-- | Types which, in a Query-like key-value list, are used in the Key position.
public export
interface QueryKeyLike a where
    toQueryKey : a -> String

-- | Types which, in a Query-like key-value list, are used in the Value position.
public export
interface QueryValueLike a where
  toQueryValue : a -> Maybe String

