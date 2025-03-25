-- | Type and constants for handling HTTP header fields.
--
-- At the bottom are also some functions to handle certain header field values.
module Network.HTTP.Types.Header

import Data.ByteString
-- | A case-insensitive name of a header field.
--
-- This is the part of the header field before the colon: @HeaderName: some value@
public export
HeaderName : Type
HeaderName = String

-- | A full HTTP header field with the name and value separated.
--
-- E.g. @\"Content-Length: 28\"@ parsed into a 'Header' would turn into @("Content-Length", "28")@
public export
Header : Type
Header = (HeaderName, String)

-- | A list of 'Header's.
--
-- Same type as 'ResponseHeaders', but useful to differentiate in type signatures.
public export
RequestHeaders : Type
RequestHeaders = List Header

-- | A list of 'Header's.
--
-- Same type as 'RequestHeaders', but useful to differentiate in type signatures.
public export
ResponseHeaders : Type
ResponseHeaders = List Header

-- | [Accept](https://www.rfc-editor.org/rfc/rfc9110.html#name-accept)
public export
hAccept : HeaderName
hAccept = "Accept"

-- | [Accept-Charset](https://www.rfc-editor.org/rfc/rfc9110.html#name-accept-charset)
public export
hAcceptCharset : HeaderName
hAcceptCharset = "Accept-Charset"

-- | [Accept-Encoding](https://www.rfc-editor.org/rfc/rfc9110.html#name-accept-encoding)
public export
hAcceptEncoding : HeaderName
hAcceptEncoding = "Accept-Encoding"

-- | [Accept-Language](https://www.rfc-editor.org/rfc/rfc9110.html#name-accept-language)
public export
hAcceptLanguage : HeaderName
hAcceptLanguage = "Accept-Language"

-- | [Accept-Ranges](https://www.rfc-editor.org/rfc/rfc9110.html#name-accept-ranges)
public export
hAcceptRanges : HeaderName
hAcceptRanges = "Accept-Ranges"

-- | [Age](https://www.rfc-editor.org/rfc/rfc9111.html#name-age)
public export
hAge : HeaderName
hAge = "Age"

-- | [Allow](https://www.rfc-editor.org/rfc/rfc9110.html#name-allow)
public export
hAllow : HeaderName
hAllow = "Allow"

-- | [Authorization](https://www.rfc-editor.org/rfc/rfc9110.html#name-authorization)
public export
hAuthorization : HeaderName
hAuthorization = "Authorization"

-- | [Cache-Control](https://www.rfc-editor.org/rfc/rfc9111.html#name-cache-control)
public export
hCacheControl : HeaderName
hCacheControl = "Cache-Control"

-- | [Connection](https://www.rfc-editor.org/rfc/rfc9110.html#name-connection)
public export
hConnection : HeaderName
hConnection = "Connection"

-- | [Content-Encoding](https://www.rfc-editor.org/rfc/rfc9110.html#name-content-encoding)
public export
hContentEncoding : HeaderName
hContentEncoding = "Content-Encoding"

-- | [Content-Language](https://www.rfc-editor.org/rfc/rfc9110.html#name-content-language)
public export
hContentLanguage : HeaderName
hContentLanguage = "Content-Language"

-- | [Content-Length](https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length)
public export
hContentLength : HeaderName
hContentLength = "Content-Length"

-- | [Content-Location](https://www.rfc-editor.org/rfc/rfc9110.html#name-content-location)
public export
hContentLocation : HeaderName
hContentLocation = "Content-Location"

-- | [Content-MD5](https://www.rfc-editor.org/rfc/rfc2616.html#section-14.15)
--
-- /This header has been obsoleted in RFC 9110./
public export
hContentMD5 : HeaderName
hContentMD5 = "Content-MD5"

-- | [Content-Range](https://www.rfc-editor.org/rfc/rfc9110.html#name-content-range)
public export
hContentRange : HeaderName
hContentRange = "Content-Range"

-- | [Content-Type](https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type)
public export
hContentType : HeaderName
hContentType = "Content-Type"

-- | [Date](https://www.rfc-editor.org/rfc/rfc9110.html#name-date)
public export
hDate : HeaderName
hDate = "Date"

-- | [ETag](https://www.rfc-editor.org/rfc/rfc9110.html#name-etag)
public export
hETag : HeaderName
hETag = "ETag"

-- | [Expect](https://www.rfc-editor.org/rfc/rfc9110.html#name-expect)
public export
hExpect : HeaderName
hExpect = "Expect"

-- | [Expires](https://www.rfc-editor.org/rfc/rfc9111.html#name-expires)
public export
hExpires : HeaderName
hExpires = "Expires"

-- | [From](https://www.rfc-editor.org/rfc/rfc9110.html#name-from)
public export
hFrom : HeaderName
hFrom = "From"

-- | [Host](https://www.rfc-editor.org/rfc/rfc9110.html#name-host-and-authority)
public export
hHost : HeaderName
hHost = "Host"

-- | [If-Match](https://www.rfc-editor.org/rfc/rfc9110.html#name-if-match)
public export
hIfMatch : HeaderName
hIfMatch = "If-Match"

-- | [If-Modified-Since](https://www.rfc-editor.org/rfc/rfc9110.html#name-if-modified-since)
public export
hIfModifiedSince : HeaderName
hIfModifiedSince = "If-Modified-Since"

-- | [If-None-Match](https://www.rfc-editor.org/rfc/rfc9110.html#name-if-none-match)
public export
hIfNoneMatch : HeaderName
hIfNoneMatch = "If-None-Match"

-- | [If-Range](https://www.rfc-editor.org/rfc/rfc9110.html#name-if-range)
public export
hIfRange : HeaderName
hIfRange = "If-Range"

-- | [If-Unmodified-Since](https://www.rfc-editor.org/rfc/rfc9110.html#name-if-unmodified-since)
public export
hIfUnmodifiedSince : HeaderName
hIfUnmodifiedSince = "If-Unmodified-Since"

-- | [Last-Modified](https://www.rfc-editor.org/rfc/rfc9110.html#name-last-modified)
public export
hLastModified : HeaderName
hLastModified = "Last-Modified"

-- | [Location](https://www.rfc-editor.org/rfc/rfc9110.html#name-location)
public export
hLocation : HeaderName
hLocation = "Location"

-- | [Max-Forwards](https://www.rfc-editor.org/rfc/rfc9110.html#name-max-forwards)
public export
hMaxForwards : HeaderName
hMaxForwards = "Max-Forwards"

-- | [Pragma](https://www.rfc-editor.org/rfc/rfc9111.html#name-pragma)
--
-- /This header has been deprecated in RFC 9111 in favor of "Cache-Control"./
public export
hPragma : HeaderName
hPragma = "Pragma"

-- | [Proxy-Authenticate](https://www.rfc-editor.org/rfc/rfc9110.html#name-proxy-authenticate)
public export
hProxyAuthenticate : HeaderName
hProxyAuthenticate = "Proxy-Authenticate"

-- | [Proxy-Authorization](https://www.rfc-editor.org/rfc/rfc9110.html#name-proxy-authorization)
public export
hProxyAuthorization : HeaderName
hProxyAuthorization = "Proxy-Authorization"

-- | [Range](https://www.rfc-editor.org/rfc/rfc9110.html#name-range)
public export
hRange : HeaderName
hRange = "Range"

-- | [Referer](https://www.rfc-editor.org/rfc/rfc9110.html#name-referer)
public export
hReferer : HeaderName
hReferer = "Referer"

-- | [Retry-After](https://www.rfc-editor.org/rfc/rfc9110.html#name-retry-after)
public export
hRetryAfter : HeaderName
hRetryAfter = "Retry-After"

-- | [Server](https://www.rfc-editor.org/rfc/rfc9110.html#name-server)
public export
hServer : HeaderName
hServer = "Server"

-- | [TE](https://www.rfc-editor.org/rfc/rfc9110.html#name-te)
public export
hTE : HeaderName
hTE = "TE"

-- | [Trailer](https://www.rfc-editor.org/rfc/rfc9110.html#name-trailer)
public export
hTrailer : HeaderName
hTrailer = "Trailer"

-- | [Transfer-Encoding](https://www.rfc-editor.org/rfc/rfc9112#name-transfer-encoding)
public export
hTransferEncoding : HeaderName
hTransferEncoding = "Transfer-Encoding"

-- | [Upgrade](https://www.rfc-editor.org/rfc/rfc9110.html#name-upgrade)
public export
hUpgrade : HeaderName
hUpgrade = "Upgrade"

-- | [User-Agent](https://www.rfc-editor.org/rfc/rfc9110.html#name-user-agent)
public export
hUserAgent : HeaderName
hUserAgent = "User-Agent"

-- | [Vary](https://www.rfc-editor.org/rfc/rfc9110.html#name-vary)
public export
hVary : HeaderName
hVary = "Vary"

-- | [Via](https://www.rfc-editor.org/rfc/rfc9110.html#name-via)
public export
hVia : HeaderName
hVia = "Via"

-- | [WWW-Authenticate](https://www.rfc-editor.org/rfc/rfc9110.html#name-www-authenticate)
public export
hWWWAuthenticate : HeaderName
hWWWAuthenticate = "WWW-Authenticate"

-- | [Warning](https://www.rfc-editor.org/rfc/rfc9111.html#name-warning)
--
-- /This header has been obsoleted in RFC 9110./
public export
hWarning : HeaderName
hWarning = "Warning"

-- | [Content-Disposition](https://www.rfc-editor.org/rfc/rfc6266.html)
public export
hContentDisposition : HeaderName
hContentDisposition = "Content-Disposition"

-- | [MIME-Version](https://www.rfc-editor.org/rfc/rfc2616.html#section-19.4.1)
public export
hMIMEVersion : HeaderName
hMIMEVersion = "MIME-Version"

-- | [Cookie](https://www.rfc-editor.org/rfc/rfc6265.html#section-4.2)
public export
hCookie : HeaderName
hCookie = "Cookie"

-- | [Set-Cookie](https://www.rfc-editor.org/rfc/rfc6265.html#section-4.1)
public export
hSetCookie : HeaderName
hSetCookie = "Set-Cookie"

-- | [Origin](https://www.rfc-editor.org/rfc/rfc6454.html#section-7)
public export
hOrigin : HeaderName
hOrigin = "Origin"

-- | [Prefer](https://www.rfc-editor.org/rfc/rfc7240.html#section-2)
public export
hPrefer : HeaderName
hPrefer = "Prefer"

-- | [Preference-Applied](https://www.rfc-editor.org/rfc/rfc7240.html#section-3)
public export
hPreferenceApplied : HeaderName
hPreferenceApplied = "Preference-Applied"

