
-- | Types and constants for HTTP methods.
--
-- The HTTP standard defines a set of standard methods, when to use them,
-- and how to handle them. The standard set has been provided as a separate
-- data type 'StdMethod', but since you can also use custom methods, the
-- basic type 'Method' is just a synonym for 'B.ByteString'.
module Network.HTTP.Types.Method

public export
Method : Type
Method = String

{-
-- | HTTP GET Method
methodGet :: Method
methodGet = renderStdMethod GET

-- | HTTP POST Method
methodPost :: Method
methodPost = renderStdMethod POST

-- | HTTP HEAD Method
methodHead :: Method
methodHead = renderStdMethod HEAD

-- | HTTP PUT Method
methodPut :: Method
methodPut = renderStdMethod PUT

-- | HTTP DELETE Method
methodDelete :: Method
methodDelete = renderStdMethod DELETE

-- | HTTP TRACE Method
methodTrace :: Method
methodTrace = renderStdMethod TRACE

-- | HTTP CONNECT Method
methodConnect :: Method
methodConnect = renderStdMethod CONNECT

-- | HTTP OPTIONS Method
methodOptions :: Method
methodOptions = renderStdMethod OPTIONS

-- | HTTP PATCH Method
--
-- @since 0.8.0
methodPatch :: Method
methodPatch = renderStdMethod PATCH -}

-- | HTTP standard method (as defined by RFC 2616, and PATCH which is defined
--   by RFC 5789).
--
-- @since 0.2.0
public export
data StdMethod
    = GET
    | POST
    | HEAD
    | PUT
    | DELETE
    | TRACE
    | CONNECT
    | OPTIONS
    | PATCH

{-
-- These are ordered by suspected frequency. More popular methods should go first.
-- The reason is that methodList is used with lookup.
-- lookup is probably faster for these few cases than setting up an elaborate data structure.

-- FIXME: listArray (minBound, maxBound) $ fmap fst methodList
methodArray :: Array StdMethod Method
methodArray = listArray (minBound, maxBound) $ map (B8.pack . show) [minBound :: StdMethod .. maxBound]

-- FIXME: map (\m -> (B8.pack $ show m, m)) [minBound .. maxBound]
methodList :: [(Method, StdMethod)]
methodList = map (\(a, b) -> (b, a)) (assocs methodArray)

-- | Convert a method 'B.ByteString' to a 'StdMethod' if possible.
--
-- @since 0.2.0
parseMethod :: Method -> Either B.ByteString StdMethod
parseMethod bs = maybe (Left bs) Right $ lookup bs methodList

-- | Convert an algebraic method to a 'B.ByteString'.
--
-- prop> renderMethod (parseMethod bs) == bs
renderMethod :: Either B.ByteString StdMethod -> Method
renderMethod = id ||| renderStdMethod

-- | Convert a 'StdMethod' to a 'B.ByteString'.
renderStdMethod :: StdMethod -> Method
renderStdMethod m = methodArray ! m -}
