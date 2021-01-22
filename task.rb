# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  p names << "斎藤"

end

def q2
  array1 = ["dog", "cat", "fish"]
  array2 = ["bird", "bat", "tiger"]

  # 以下に回答を記載
  p array = array1 + array2

end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  p numbers.count(3)


end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  sports.compact!
  # 以下は変更しないで下さい
  p sports

end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  p   array1.empty?
  p   array2.empty?
end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載

    p numbers2 = numbers1.map{|num| num * 10}
end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  array.map!(&:to_i)
  # 以下は変更しないで下さい
  p array
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載
  programming_languages.map!(&:capitalize)
  upper_case_programming_languages = programming_languages.map(&:upcase)

  # 以下は変更しないで下さい
  p programming_languages
  p upper_case_programming_languages
end

def q9

  names = ["田中", "佐藤", "佐々木", "高橋"]
  #以下に回答を記載
  names.each.with_index(1) do |name,i|
  puts "会員No.#{i} #{name}さん"
  end
end


def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
   foods.map do |fish|
      puts fish.include?("うに") ? "好物です" : "まぁまぁ好きです"
   end
# 条件式(true or false) ? trueの時に行いたい処理 : falseの時に行いたい処理

end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  puts "ユーザの趣味一覧"
  sports.flatten.uniq.each.with_index(1) do |names,i|
  puts "No#{i} #{names}"

  end

#ユーザーの趣味一覧
#No1 サッカー
#No2 バスケ
end

def q12
  data = { user: { name: "satou", age: 33 } }
## Q12. 次のハッシュから `name` の値を出力して下さい。
  # 以下に回答を記載
  puts data[:user][:name]
end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載
  user_data[:age] = update_data[:age]
  user_data[:address] = update_data[:address]
#  user_data[:age][:address] = update_data[:age][:address]のように複数
#  のキー指定して値を変更したかったですがうまくいかず・・・。

puts user_data.update(update_data)

end

def q14

  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }
  # 以下に回答を記載
  p data.keys
end

def q15

  ## Q15. `age` というキーが含まれている場合は `OK` ，含まれていない場合は `NG` という文字列が出力されるコードを書いて下さい。

  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
=begin
  見辛い上に無駄なコードが多いので却下
    data1.each_key do
      |key| puts key == :age ? "OK" : "NG"
    end
    data2.each_key do
      |key| puts key == :age ? "OK" : "NG"
    end
=end
    puts data1.key?(:age) ? "OK" : "NG"
    puts data2.key?(:age) ? "OK" : "NG"
end

def q16
  ## Q16. 次の配列の各要素について，「私の名前は〜です。年齢は〜歳です。」と表示して下さい。

  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}歳です。"

  end
end

class UserQ17
  # 以下に回答
  def initialize(name:,age:,gender:)
      @name = name
      @age = age
      @gender = gender
  end


  def info
    puts "名前：#{@name} \n年齢：#{@age}\n性別：#{@gender}"
  end

end

def q17
  
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男")
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男")

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
 
  def initialize(name:,age:)
      @name = name
      @age = age
  
  end


  def introduce
      puts 20 >= @age ? "こんにちは，#{@name}と申します。宜しくお願いいたします。" : "はいさいまいど〜，#{@name}です！！！"
  end

end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい

  def initialize(name:)
    @name = name
  end
  def name
    @name
  end

end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  def initialize(name:,age:) 
  @name = name
  @age = age
  end
  def name=(name)
    @name = name
  end

  def age=(age)
    @age = age
  end
end

class Zoo

  def initialize(name:,entry_fee:)
    @name = name
    @entry_fee=entry_fee

    end

    def name=(name)
      @name = name
    end
    

  def info_entry_fee(params)
      @name = params[@name]


  puts @names
=begin
    case age:
      年齢区分は，幼児(0〜5歳)，子供(6〜12歳)，成人(13〜64歳)，シニア(65〜120歳)の4パターンとします。（この範囲外の年齢については対処しなくてOKです）

      when 0..5
        puts "春です"
      when 6..12
        puts "夏です"
      when 13..64
        puts "秋です"
      when 65..120
        puts "冬です"
      else
        puts "不正な値です"
      end
=end

  end


end


def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
   zoo.info_entry_fee(user)
   
 end
end
