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
