module Network.HTTP.Types.Status

import Control.Data.Enum

-- | HTTP Status.
--
-- Only the 'statusCode' is used for comparisons.
--
-- Please use 'mkStatus' to create status codes from code and message, or the 'Enum' instance or the
-- status code constants (like 'ok200'). There might be additional record members in the future.
--
-- Note that the Show instance is only for debugging.

public export
record Status where
  constructor MkStatus
  statusCode : Int
  statusMessage : String

-- | Continue 100
public export
status100 : Status
status100 = MkStatus 100 "Continue"

-- | Continue 100
public export
continue100 : Status
continue100 = status100

-- | Switching Protocols 101
public export
status101 : Status
status101 = MkStatus 101 "Switching Protocols"

-- | Switching Protocols 101
public export
switchingProtocols101 : Status
switchingProtocols101 = status101

-- | OK 200
public export
status200 : Status
status200 = MkStatus 200 "OK"

-- | OK 200
public export
ok200 : Status
ok200 = status200

-- | Created 201
public export
status201 : Status
status201 = MkStatus 201 "Created"

-- | Created 201
public export
created201 : Status
created201 = status201

-- | Accepted 202
public export
status202 : Status
status202 = MkStatus 202 "Accepted"

-- | Accepted 202
public export
accepted202 : Status
accepted202 = status202

-- | Non-Authoritative Information 203
public export
status203 : Status
status203 = MkStatus 203 "Non-Authoritative Information"

-- | Non-Authoritative Information 203
public export
nonAuthoritative203 : Status
nonAuthoritative203 = status203

-- | No Content 204
public export
status204 : Status
status204 = MkStatus 204 "No Content"

-- | No Content 204
public export
noContent204 : Status
noContent204 = status204

-- | Reset Content 205
public export
status205 : Status
status205 = MkStatus 205 "Reset Content"

-- | Reset Content 205
public export
resetContent205 : Status
resetContent205 = status205

-- | Partial Content 206
public export
status206 : Status
status206 = MkStatus 206 "Partial Content"

-- | Partial Content 206
public export
partialContent206 : Status
partialContent206 = status206

-- | Multiple Choices 300
public export
status300 : Status
status300 = MkStatus 300 "Multiple Choices"

-- | Multiple Choices 300
public export
multipleChoices300 : Status
multipleChoices300 = status300

-- | Moved Permanently 301
public export
status301 : Status
status301 = MkStatus 301 "Moved Permanently"

-- | Moved Permanently 301
public export
movedPermanently301 : Status
movedPermanently301 = status301

-- | Found 302
public export
status302 : Status
status302 = MkStatus 302 "Found"

-- | Found 302
public export
found302 : Status
found302 = status302

-- | See Other 303
public export
status303 : Status
status303 = MkStatus 303 "See Other"

-- | See Other 303
public export
seeOther303 : Status
seeOther303 = status303

-- | Not Modified 304
public export
status304 : Status
status304 = MkStatus 304 "Not Modified"

-- | Not Modified 304
public export
notModified304 : Status
notModified304 = status304

-- | Use Proxy 305
public export
status305 : Status
status305 = MkStatus 305 "Use Proxy"

-- | Use Proxy 305
public export
useProxy305 : Status
useProxy305 = status305

-- | Temporary Redirect 307
public export
status307 : Status
status307 = MkStatus 307 "Temporary Redirect"

-- | Temporary Redirect 307
public export
temporaryRedirect307 : Status
temporaryRedirect307 = status307

-- | Permanent Redirect 308
public export
status308 : Status
status308 = MkStatus 308 "Permanent Redirect"

-- | Permanent Redirect 308
public export
permanentRedirect308 : Status
permanentRedirect308 = status308

-- | Bad Request 400
public export
status400 : Status
status400 = MkStatus 400 "Bad Request"

-- | Bad Request 400
public export
badRequest400 : Status
badRequest400 = status400

-- | Unauthorized 401
public export
status401 : Status
status401 = MkStatus 401 "Unauthorized"

-- | Unauthorized 401
public export
unauthorized401 : Status
unauthorized401 = status401

-- | Payment Required 402
public export
status402 : Status
status402 = MkStatus 402 "Payment Required"

-- | Payment Required 402
public export
paymentRequired402 : Status
paymentRequired402 = status402

-- | Forbidden 403
public export
status403 : Status
status403 = MkStatus 403 "Forbidden"

-- | Forbidden 403
public export
forbidden403 : Status
forbidden403 = status403

-- | Not Found 404
public export
status404 : Status
status404 = MkStatus 404 "Not Found"

-- | Not Found 404
public export
notFound404 : Status
notFound404 = status404

-- | Method Not Allowed 405
public export
status405 : Status
status405 = MkStatus 405 "Method Not Allowed"

-- | Method Not Allowed 405
public export
methodNotAllowed405 : Status
methodNotAllowed405 = status405

-- | Not Acceptable 406
public export
status406 : Status
status406 = MkStatus 406 "Not Acceptable"

-- | Not Acceptable 406
public export
notAcceptable406 : Status
notAcceptable406 = status406

-- | Proxy Authentication Required 407
public export
status407 : Status
status407 = MkStatus 407 "Proxy Authentication Required"

-- | Proxy Authentication Required 407
public export
proxyAuthenticationRequired407 : Status
proxyAuthenticationRequired407 = status407

-- | Request Timeout 408
public export
status408 : Status
status408 = MkStatus 408 "Request Timeout"

-- | Request Timeout 408
public export
requestTimeout408 : Status
requestTimeout408 = status408

-- | Conflict 409
public export
status409 : Status
status409 = MkStatus 409 "Conflict"

-- | Conflict 409
public export
conflict409 : Status
conflict409 = status409

-- | Gone 410
public export
status410 : Status
status410 = MkStatus 410 "Gone"

-- | Gone 410
public export
gone410 : Status
gone410 = status410

-- | Length Required 411
public export
status411 : Status
status411 = MkStatus 411 "Length Required"

-- | Length Required 411
public export
lengthRequired411 : Status
lengthRequired411 = status411

-- | Precondition Failed 412
public export
status412 : Status
status412 = MkStatus 412 "Precondition Failed"

-- | Precondition Failed 412
public export
preconditionFailed412 : Status
preconditionFailed412 = status412

-- | Request Entity Too Large 413
public export
status413 : Status
status413 = MkStatus 413 "Request Entity Too Large"

-- | Request Entity Too Large 413
public export
requestEntityTooLarge413 : Status
requestEntityTooLarge413 = status413

-- | Request-URI Too Long 414
public export
status414 : Status
status414 = MkStatus 414 "Request-URI Too Long"

-- | Request-URI Too Long 414
public export
requestURITooLong414 : Status
requestURITooLong414 = status414

-- | Unsupported Media Type 415
public export
status415 : Status
status415 = MkStatus 415 "Unsupported Media Type"

-- | Unsupported Media Type 415
public export
unsupportedMediaType415 : Status
unsupportedMediaType415 = status415

-- | Requested Range Not Satisfiable 416
public export
status416 : Status
status416 = MkStatus 416 "Requested Range Not Satisfiable"

-- | Requested Range Not Satisfiable 416
public export
requestedRangeNotSatisfiable416 : Status
requestedRangeNotSatisfiable416 = status416

-- | Expectation Failed 417
public export
status417 : Status
status417 = MkStatus 417 "Expectation Failed"

-- | Expectation Failed 417
public export
expectationFailed417 : Status
expectationFailed417 = status417

-- | I'm a teapot 418
public export
status418 : Status
status418 = MkStatus 418 "I'm a teapot"

-- | I'm a teapot 418
public export
imATeapot418 : Status
imATeapot418 = status418

-- | Unprocessable Entity 422
-- (<https://tools.ietf.org/html/rfc4918 RFC 4918>)
public export
status422 : Status
status422 = MkStatus 422 "Unprocessable Entity"

-- | Unprocessable Entity 422
-- (<https://tools.ietf.org/html/rfc4918 RFC 4918>)
public export
unprocessableEntity422 : Status
unprocessableEntity422 = status422

-- | Upgrade Required 426
-- (<https://tools.ietf.org/html/rfc7231#section-6.5.15>)
public export
status426 : Status
status426 = MkStatus 426 "Upgrade Required"

-- | Upgrade Required 426
-- (<https://tools.ietf.org/html/rfc7231#section-6.5.15>)
public export
upgradeRequired426 : Status
upgradeRequired426 = status426

-- | Precondition Required 428
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
public export
status428 : Status
status428 = MkStatus 428 "Precondition Required"

-- | Precondition Required 428
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
public export
preconditionRequired428 : Status
preconditionRequired428 = status428

-- | Too Many Requests 429
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
public export
status429 : Status
status429 = MkStatus 429 "Too Many Requests"

-- | Too Many Requests 429
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
public export
tooManyRequests429 : Status
tooManyRequests429 = status429

-- | Request Header Fields Too Large 431
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
public export
status431 : Status
status431 = MkStatus 431 "Request Header Fields Too Large"

-- | Request Header Fields Too Large 431
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
public export
requestHeaderFieldsTooLarge431 : Status
requestHeaderFieldsTooLarge431 = status431

-- | Internal Server Error 500
public export
status500 : Status
status500 = MkStatus 500 "Internal Server Error"

-- | Internal Server Error 500
public export
internalServerError500 : Status
internalServerError500 = status500

-- | Not Implemented 501
public export
status501 : Status
status501 = MkStatus 501 "Not Implemented"

-- | Not Implemented 501
public export
notImplemented501 : Status
notImplemented501 = status501

-- | Bad Gateway 502
public export
status502 : Status
status502 = MkStatus 502 "Bad Gateway"

-- | Bad Gateway 502
public export
badGateway502 : Status
badGateway502 = status502

-- | Service Unavailable 503
public export
status503 : Status
status503 = MkStatus 503 "Service Unavailable"

-- | Service Unavailable 503
public export
serviceUnavailable503 : Status
serviceUnavailable503 = status503

-- | Gateway Timeout 504
public export
status504 : Status
status504 = MkStatus 504 "Gateway Timeout"

-- | Gateway Timeout 504
public export
gatewayTimeout504 : Status
gatewayTimeout504 = status504

-- | HTTP Version Not Supported 505
public export
status505 : Status
status505 = MkStatus 505 "HTTP Version Not Supported"

-- | HTTP Version Not Supported 505
public export
httpVersionNotSupported505 : Status
httpVersionNotSupported505 = status505

-- | Network Authentication Required 511
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
public export
status511 : Status
status511 = MkStatus 511 "Network Authentication Required"

-- | Network Authentication Required 511
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
public export
networkAuthenticationRequired511 : Status
networkAuthenticationRequired511 = status511

-- | Informational class
--
-- Checks if the status is in the 1XX range.
public export
statusIsInformational : Status -> Bool
statusIsInformational (MkStatus code _) = code >= 100 && code < 200

-- | Successful class
--
-- Checks if the status is in the 2XX range.
public export
statusIsSuccessful : Status -> Bool
statusIsSuccessful (MkStatus code _) = code >= 200 && code < 300

-- | Redirection class
--
-- Checks if the status is in the 3XX range.
public export
statusIsRedirection : Status -> Bool
statusIsRedirection (MkStatus code _) = code >= 300 && code < 400

-- | Client Error class
--
-- Checks if the status is in the 4XX range.
public export
statusIsClientError : Status -> Bool
statusIsClientError (MkStatus code _) = code >= 400 && code < 500

-- | Server Error class
--
-- Checks if the status is in the 5XX range.
public export
statusIsServerError : Status -> Bool
statusIsServerError (MkStatus code _) = code >= 500 && code < 600

public export
Enum Status where
    fromEnum = statusCode
    toEnum 100 = status100
    toEnum 101 = status101
    toEnum 200 = status200
    toEnum 201 = status201
    toEnum 202 = status202
    toEnum 203 = status203
    toEnum 204 = status204
    toEnum 205 = status205
    toEnum 206 = status206
    toEnum 300 = status300
    toEnum 301 = status301
    toEnum 302 = status302
    toEnum 303 = status303
    toEnum 304 = status304
    toEnum 305 = status305
    toEnum 307 = status307
    toEnum 308 = status308
    toEnum 400 = status400
    toEnum 401 = status401
    toEnum 402 = status402
    toEnum 403 = status403
    toEnum 404 = status404
    toEnum 405 = status405
    toEnum 406 = status406
    toEnum 407 = status407
    toEnum 408 = status408
    toEnum 409 = status409
    toEnum 410 = status410
    toEnum 411 = status411
    toEnum 412 = status412
    toEnum 413 = status413
    toEnum 414 = status414
    toEnum 415 = status415
    toEnum 416 = status416
    toEnum 417 = status417
    toEnum 418 = status418
    toEnum 422 = status422
    toEnum 426 = status426
    toEnum 428 = status428
    toEnum 429 = status429
    toEnum 431 = status431
    toEnum 500 = status500
    toEnum 501 = status501
    toEnum 502 = status502
    toEnum 503 = status503
    toEnum 504 = status504
    toEnum 505 = status505
    toEnum 511 = status511
    toEnum c   = MkStatus c ""

