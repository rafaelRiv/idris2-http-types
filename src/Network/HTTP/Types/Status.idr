module Network.HTTP.Types.Status

-- | HTTP Status.
--
-- Only the 'statusCode' is used for comparisons.
--
-- Please use 'mkStatus' to create status codes from code and message, or the 'Enum' instance or the
-- status code constants (like 'ok200'). There might be additional record members in the future.
--
-- Note that the Show instance is only for debugging.

record Status where
  constructor MkStatus
  statusCode : Int
  statusMessage : String

interface Enum a where
  fromEnum : Int -> a
  toEnum : a -> Int

Enum Status where
  toEnum = statusCode 
  fromEnum c = MkStatus c ""

{-
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
    toEnum c   = mkStatus c B.empty -}

-- | Created 201
status201 : Status
status201 = MkStatus 201 "Created"
