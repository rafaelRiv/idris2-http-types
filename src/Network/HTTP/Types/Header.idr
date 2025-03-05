-- | Type and constants for handling HTTP header fields.
--
-- At the bottom are also some functions to handle certain header field values.
module Network.HTTP.Types.Header

-- | A case-insensitive name of a header field.
--
-- This is the part of the header field before the colon: @HeaderName: some value@
HeaderName : Type
HeaderName = String

-- | A full HTTP header field with the name and value separated.
--
-- E.g. @\"Content-Length: 28\"@ parsed into a 'Header' would turn into @("Content-Length", "28")@
Header : (Type,Type)
Header = (HeaderName, String)

-- | A list of 'Header's.
--
-- Same type as 'ResponseHeaders', but useful to differentiate in type signatures.
RequestHeaders : List (Type,Type)
RequestHeaders = [Header]

-- | [Accept](https://www.rfc-editor.org/rfc/rfc9110.html#name-accept)
hAccept : HeaderName
hAccept = "Accept"

-- | [Accept-Charset](https://www.rfc-editor.org/rfc/rfc9110.html#name-accept-charset)
hAcceptCharset : HeaderName
hAcceptCharset = "Accept-Charset"

-- | [Accept-Encoding](https://www.rfc-editor.org/rfc/rfc9110.html#name-accept-encoding)
hAcceptEncoding : HeaderName
hAcceptEncoding = "Accept-Encoding"

-- | [Accept-Language](https://www.rfc-editor.org/rfc/rfc9110.html#name-accept-language)
hAcceptLanguage : HeaderName
hAcceptLanguage = "Accept-Language"

-- | [Accept-Ranges](https://www.rfc-editor.org/rfc/rfc9110.html#name-accept-ranges)
hAcceptRanges : HeaderName
hAcceptRanges = "Accept-Ranges"

-- | [Age](https://www.rfc-editor.org/rfc/rfc9111.html#name-age)
hAge : HeaderName
hAge = "Age"

-- | [Allow](https://www.rfc-editor.org/rfc/rfc9110.html#name-allow)
hAllow : HeaderName
hAllow = "Allow"

-- | [Authorization](https://www.rfc-editor.org/rfc/rfc9110.html#name-authorization)
hAuthorization : HeaderName
hAuthorization = "Authorization"

-- | [Cache-Control](https://www.rfc-editor.org/rfc/rfc9111.html#name-cache-control)
hCacheControl : HeaderName
hCacheControl = "Cache-Control"

-- | [Connection](https://www.rfc-editor.org/rfc/rfc9110.html#name-connection)
hConnection : HeaderName
hConnection = "Connection"

-- | [Content-Encoding](https://www.rfc-editor.org/rfc/rfc9110.html#name-content-encoding)
hContentEncoding : HeaderName
hContentEncoding = "Content-Encoding"

-- | [Content-Language](https://www.rfc-editor.org/rfc/rfc9110.html#name-content-language)
hContentLanguage : HeaderName
hContentLanguage = "Content-Language"

-- | [Content-Length](https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length)
hContentLength : HeaderName
hContentLength = "Content-Length"

-- | [Content-Location](https://www.rfc-editor.org/rfc/rfc9110.html#name-content-location)
hContentLocation : HeaderName
hContentLocation = "Content-Location"

-- | [Content-MD5](https://www.rfc-editor.org/rfc/rfc2616.html#section-14.15)
--
-- /This header has been obsoleted in RFC 9110./
hContentMD5 : HeaderName
hContentMD5 = "Content-MD5"

-- | [Content-Range](https://www.rfc-editor.org/rfc/rfc9110.html#name-content-range)
hContentRange : HeaderName
hContentRange = "Content-Range"

-- | [Content-Type](https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type)
--
-- @since 0.7.0
hContentType : HeaderName
hContentType = "Content-Type"

-- | [Date](https://www.rfc-editor.org/rfc/rfc9110.html#name-date)
hDate : HeaderName
hDate = "Date"

-- | [ETag](https://www.rfc-editor.org/rfc/rfc9110.html#name-etag)
hETag : HeaderName
hETag = "ETag"

-- | [Expect](https://www.rfc-editor.org/rfc/rfc9110.html#name-expect)
hExpect : HeaderName
hExpect = "Expect"

-- | [Expires](https://www.rfc-editor.org/rfc/rfc9111.html#name-expires)
hExpires : HeaderName
hExpires = "Expires"

-- | [From](https://www.rfc-editor.org/rfc/rfc9110.html#name-from)
hFrom : HeaderName
hFrom = "From"

-- | [Host](https://www.rfc-editor.org/rfc/rfc9110.html#name-host-and-authority)
hHost : HeaderName
hHost = "Host"

-- | [If-Match](https://www.rfc-editor.org/rfc/rfc9110.html#name-if-match)
hIfMatch : HeaderName
hIfMatch = "If-Match"

-- | [If-Modified-Since](https://www.rfc-editor.org/rfc/rfc9110.html#name-if-modified-since)
hIfModifiedSince : HeaderName
hIfModifiedSince = "If-Modified-Since"

-- | [If-None-Match](https://www.rfc-editor.org/rfc/rfc9110.html#name-if-none-match)
hIfNoneMatch : HeaderName
hIfNoneMatch = "If-None-Match"

-- | [If-Range](https://www.rfc-editor.org/rfc/rfc9110.html#name-if-range)
hIfRange : HeaderName
hIfRange = "If-Range"

-- | [If-Unmodified-Since](https://www.rfc-editor.org/rfc/rfc9110.html#name-if-unmodified-since)
hIfUnmodifiedSince : HeaderName
hIfUnmodifiedSince = "If-Unmodified-Since"

-- | [Last-Modified](https://www.rfc-editor.org/rfc/rfc9110.html#name-last-modified)
hLastModified : HeaderName
hLastModified = "Last-Modified"

-- | [Location](https://www.rfc-editor.org/rfc/rfc9110.html#name-location)
hLocation : HeaderName
hLocation = "Location"

-- | [Max-Forwards](https://www.rfc-editor.org/rfc/rfc9110.html#name-max-forwards)
hMaxForwards : HeaderName
hMaxForwards = "Max-Forwards"

-- | [Pragma](https://www.rfc-editor.org/rfc/rfc9111.html#name-pragma)
--
-- /This header has been deprecated in RFC 9111 in favor of "Cache-Control"./
hPragma : HeaderName
hPragma = "Pragma"

-- | [Proxy-Authenticate](https://www.rfc-editor.org/rfc/rfc9110.html#name-proxy-authenticate)
hProxyAuthenticate : HeaderName
hProxyAuthenticate = "Proxy-Authenticate"

-- | [Proxy-Authorization](https://www.rfc-editor.org/rfc/rfc9110.html#name-proxy-authorization)
hProxyAuthorization : HeaderName
hProxyAuthorization = "Proxy-Authorization"

-- | [Range](https://www.rfc-editor.org/rfc/rfc9110.html#name-range)
hRange : HeaderName
hRange = "Range"

-- | [Referer](https://www.rfc-editor.org/rfc/rfc9110.html#name-referer)
hReferer : HeaderName
hReferer = "Referer"

-- | [Retry-After](https://www.rfc-editor.org/rfc/rfc9110.html#name-retry-after)
hRetryAfter : HeaderName
hRetryAfter = "Retry-After"

-- | [Server](https://www.rfc-editor.org/rfc/rfc9110.html#name-server)
hServer : HeaderName
hServer = "Server"

-- | [TE](https://www.rfc-editor.org/rfc/rfc9110.html#name-te)
hTE : HeaderName
hTE = "TE"

-- | [Trailer](https://www.rfc-editor.org/rfc/rfc9110.html#name-trailer)
hTrailer : HeaderName
hTrailer = "Trailer"

-- | [Transfer-Encoding](https://www.rfc-editor.org/rfc/rfc9112#name-transfer-encoding)
hTransferEncoding : HeaderName
hTransferEncoding = "Transfer-Encoding"

-- | [Upgrade](https://www.rfc-editor.org/rfc/rfc9110.html#name-upgrade)
hUpgrade : HeaderName
hUpgrade = "Upgrade"

-- | [User-Agent](https://www.rfc-editor.org/rfc/rfc9110.html#name-user-agent)
hUserAgent : HeaderName
hUserAgent = "User-Agent"

-- | [Vary](https://www.rfc-editor.org/rfc/rfc9110.html#name-vary)
hVary : HeaderName
hVary = "Vary"

-- | [Via](https://www.rfc-editor.org/rfc/rfc9110.html#name-via)
hVia : HeaderName
hVia = "Via"

-- | [WWW-Authenticate](https://www.rfc-editor.org/rfc/rfc9110.html#name-www-authenticate)
hWWWAuthenticate : HeaderName
hWWWAuthenticate = "WWW-Authenticate"

-- | [Warning](https://www.rfc-editor.org/rfc/rfc9111.html#name-warning)
--
-- /This header has been obsoleted in RFC 9110./
hWarning : HeaderName
hWarning = "Warning"

-- | [Content-Disposition](https://www.rfc-editor.org/rfc/rfc6266.html)
hContentDisposition : HeaderName
hContentDisposition = "Content-Disposition"

-- | [MIME-Version](https://www.rfc-editor.org/rfc/rfc2616.html#section-19.4.1)
hMIMEVersion : HeaderName
hMIMEVersion = "MIME-Version"

-- | [Cookie](https://www.rfc-editor.org/rfc/rfc6265.html#section-4.2)
hCookie : HeaderName
hCookie = "Cookie"

-- | [Set-Cookie](https://www.rfc-editor.org/rfc/rfc6265.html#section-4.1)
hSetCookie : HeaderName
hSetCookie = "Set-Cookie"

-- | [Origin](https://www.rfc-editor.org/rfc/rfc6454.html#section-7)
hOrigin : HeaderName
hOrigin = "Origin"

-- | [Prefer](https://www.rfc-editor.org/rfc/rfc7240.html#section-2)
hPrefer : HeaderName
hPrefer = "Prefer"

-- | [Preference-Applied](https://www.rfc-editor.org/rfc/rfc7240.html#section-3)
hPreferenceApplied : HeaderName
hPreferenceApplied = "Preference-Applied"

