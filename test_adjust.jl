include("adjust.jl")
# --- 使用例 ---
# 1. 元の1次元配列を作成
A = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0]

# 2. (2, 2) の行列としてビューを作成
v2x2 = adjust(A, (2, 2))

# 3. (2, 2, 1) の3次元配列としてビューを作成
v3d = adjust(A, (2, 2, 1))

println("2x2 View:\n", v2x2)
println("Original A[1] before: ", A[1])

# ビューを書き換えると元配列も変わることを確認
v2x2[1, 1] = 99.0
println("Original A[1] after:  ", A[1])
