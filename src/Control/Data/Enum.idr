module Control.Data.Enum

public export
interface Enum a where
  fromEnum : a -> Int
  toEnum : Int -> a
