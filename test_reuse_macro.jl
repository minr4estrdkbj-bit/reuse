using MacroTools
include("reuse_macro.jl")

# 実行例
ex = @macroexpand @closure_wrap function make_multiplier(n)
    println("Creating a multiplier for ", n)
end x -> x * n

# きれいに表示
prettify(ex)

# 実行
eval(ex)
func = make_multiplier(2)
func(7)
