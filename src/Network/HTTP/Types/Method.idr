
-- | Types and constants for HTTP methods.
--
-- The HTTP standard defines a set of standard methods, when to use them,
-- and how to handle them. The standard set has been provided as a separate
-- data type 'StdMethod', but since you can also use custom methods, the
-- basic type 'Method' is just a synonym for 'String'.
module Network.HTTP.Types.Method

public export
Method : Type
Method = String

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

Show StdMethod where
  show GET ="GET"
  show POST = "POST"
  show HEAD = "HEAD"
  show PUT = "PUT"
  show DELETE = "DELETE"
  show TRACE = "TRACE"
  show CONNECT = "CONNECT"
  show OPTIONS = "OPTIONS"
  show PATCH = "PATCH"

-- | HTTP GET Method
methodGet : Method
methodGet = show GET

-- | HTTP POST Method
methodPost : Method
methodPost = show POST

-- | HTTP HEAD Method
methodHead : Method
methodHead = show HEAD

-- | HTTP PUT Method
methodPut : Method
methodPut = show PUT

-- | HTTP DELETE Method
methodDelete : Method
methodDelete = show DELETE

-- | HTTP TRACE Method
methodTrace : Method
methodTrace = show TRACE

-- | HTTP CONNECT Method
methodConnect : Method
methodConnect = show CONNECT

-- | HTTP OPTIONS Method
methodOptions : Method
methodOptions = show OPTIONS

-- | HTTP PATCH Method
--
-- @since 0.8.0
methodPatch : Method
methodPatch = show PATCH 

