# ハッシュのキーと値を表示しながら、値の合計を計算し、最後に合計を返すメソッド
def sum(hash)
    s = 0     #合計が格納される変数を初期化
    hash.each do |key,val|  #これでセット
        puts val    # 表示
        s += val
    end
    return s
end

# ハッシュの準備
yaoya = {"NINJIN" => 150,"TOMATO" => 100,"ABOKADO" =>120}

#ハッシュを引数として、メソッドを呼び、返り値を変数goukeiに保存する
goukei = sum(yaoya)
#表示
print("ハッシュの値の合計は, ",goukei,"です\n")
