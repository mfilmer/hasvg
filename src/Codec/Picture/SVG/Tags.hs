module Codec.Picture.SVG.Tags where

import Data.Word (Word8)

data Graphic = Circle (Maybe cx) (Maybe cy) (Maybe r) Style
             | Ellipse
             | Image
             | Line
             | Path
             | Polygon
             | Polyline
             | Rect
             | Text
             | Use

type RGB = (Word8, Word8, Word8)

data Linecap = Butt | Round | Square | InheritCap
data Linejoin = Miter | Round | Bevel | InheritJoin

data Style = Fill RGB
           | FillOpacity Double
           | Stroke RGB
           | StrokeWidth Double
           | StrokeLinecap Linecap
           | StrokeLinejoin Linejoin
           | StrokeMiterlimit Double
           | StrokeOpacity Double
           | StrokeDasharray
           | StrokeDashoffset

tag1 = "tag1"