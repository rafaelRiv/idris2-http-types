module Network.HTTP.Types.Version

-- | HTTP Version.
--
-- Note that the Show interface is intended merely for debugging.
public export
record HttpVersion where
  constructor MkHttpVersion
  httpMajor : Int
  httpMinor : Int

public export
Show HttpVersion where
  show (MkHttpVersion major minor) = "HTTP/" ++ show major ++ "." ++ show minor

-- | HTTP 0.9
public export
http09 : HttpVersion
http09 = MkHttpVersion 0 9

-- | HTTP 1.0
public export
http10 : HttpVersion
http10 = MkHttpVersion 1 0

-- | HTTP 1.1
public export
http11 : HttpVersion
http11 = MkHttpVersion 1 1

-- | HTTP 2.0
public export
http20 : HttpVersion
http20 = MkHttpVersion 2 0
