require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1

    puts "拡張子を除いたファイルをファイルを入力してください"

    file_name = gets.chomp

    puts "メモしたい内容を記入してください"
    puts "完了したら Ctrl + Dをおします"

    input_memo = STDIN.read

    CSV.open("#{file_name}.csv" ,"w") do |csv|

     csv << [input_memo.chomp]
    
    end

elsif memo_type == 2

    puts "編集内容を入力してください"
    puts "完了したら Ctrl + Dをおします"

    input_memo = STDIN.read

    CSV.open("#{file_name}.csv" ,"a") do |csv|

    csv << [input_memo.chomp]

end

else
    puts "1か2を入力してください"
end    
   