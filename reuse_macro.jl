macro closure_wrap(outer_func, inner_logic)
    # 外側の関数が正しく定義されているかチェック
    if outer_func.head !== :function
        error("First argument must be a function definition.")
    end

    # 外側の関数のボディ部分を取り出す
    outer_body = outer_func.args[2].args

    # 内部ロジックをボディの末尾に追加し、それが返り値になるようにする
    # 無名関数の場合、そのまま配置すれば「関数オブジェクト」として評価される
    push!(outer_body, inner_logic)

    return esc(outer_func)
end
