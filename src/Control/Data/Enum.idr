module Control.Data.Enum

public export
interface Enum a where
  fromEnum : Int -> a
  toEnum : a -> Int
