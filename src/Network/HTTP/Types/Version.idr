module Network.HTTP.Types.Version

-- | HTTP Version.
--
-- Note that the Show interface is intended merely for debugging.
record HttpVersion where
  constructor MkHttpVersion
  httpMajor : Int
  httpMinor : Int

Show HttpVersion where
  show (MkHttpVersion major minor) = "HTTP/" ++ show major ++ "." ++ show minor

-- | HTTP 0.9
http09 : HttpVersion
http09 = MkHttpVersion 0 9

-- | HTTP 1.0
http10 : HttpVersion
http10 = MkHttpVersion 1 0

-- | HTTP 1.1
http11 : HttpVersion
http11 = MkHttpVersion 1 1

-- | HTTP 2.0
http20 : HttpVersion
http20 = MkHttpVersion 2 0
