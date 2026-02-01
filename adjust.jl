"""
    reshape_view(data::AbstractVector, shape::Tuple)

1次元配列 `data` の先頭から、指定した `shape` 分の要素を
ビューとして切り出し、多次元配列として返します。
"""
function adjust(data::AbstractVector, shape::Tuple)
    len = prod(shape)
    # 先頭(1)から必要な長さ分をビューとして切り出し、指定の形状にreshape
    return reshape(view(data, 1:len), shape)
end
