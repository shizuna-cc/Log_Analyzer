#! ruby -Ku
require File.dirname(__FILE__) + "/Calendar"
require "ruby-progressbar"

#デバッグモード
debug = false

#入力ファイル
fileList = Array.new

#入力期間
term = Array.new
term_date = Array.new

#時間帯別格納ハッシュ
hourly = {}

#ipアドレスのハッシュ
ipList = {}

#エラー発生時にtrue
onError = false

puts "ファイルパスを入力してください。複数ある場合は半角スペースで区切り入力してください。"

#ユーザ入力
fileList = gets.split


puts "検索期間を入力してください。開始日時と終了日時を半角スペースで区切り入力してください。"
puts "期間を指定しない場合は何も入力せずにエンターを押してください。"

#ユーザ入力ループ
loop do

  term = gets.split

  #期間を入力しない場合の処理
  if term.empty? then
    term_date[0] = Time.local(0,1,1)
    term_date[1] = Time.local(9999,12,31)
    puts term
    break
  end

  term.each_index {|idx|
    term_date[idx] = Calendar.str_to_date("#{term[idx]}")
    break if term_date[idx] == 0
  }

  #正常な入力なら抜け出す
  if term_date[0] != 0 && term_date[1] != 0 then
    break
  end
end

fileList.each { |filename|

begin

  puts "#{filename}を処理中"

  #コマンドラインに進捗のバーを表示
  progressbar = ProgressBar.create(total:FileTest.size(filename))

    #ログファイル読み込み
    File.open(String(filename),"r") {|file|

      #1行のログの読み出し
      file.each_line { |log|

        sentence = log

        #日付の場所の特定
        date = sentence.slice(/\d{2}\/\w{3}\/\d{4}:\d{2}:\d{2}:\d{2}/)
        _date = Calendar.str_to_date(date)

        #オプションで設定した期間内かどうか
        if (_date - term_date[0]) >= 0 && (term_date[1] - _date) > 0 then

          #ハッシュが空の場合作成
          if hourly.empty? then
            hourly["#{date.slice(0,14)}:00:00"] = 1

          else

            #時間帯がハッシュに初めて出現
            if  hourly.fetch("#{date.slice(0,14)}:00:00" , 0) ==  0 then
              hourly.store("#{date.slice(0,14)}:00:00" , 1)

            else
              hourly["#{date.slice(0,14)}:00:00"] += 1

            end

          end

          #ＩＰアドレスの割り出し
          ipAddress = sentence.slice(/\d+\.\d+\.\d+\.\d+/)

          #ハッシュが空の場合作成
          if ipList.empty? then
            ipList["#{ipAddress}"] = 1

          else

            #ipアドレスがハッシュに初めて出現
            if  ipList.fetch("#{ipAddress}" , 0) ==  0 then
              ipList.store("#{ipAddress}" , 1)

            else
              ipList["#{ipAddress}"] += 1

            end

          end

        end

        progressbar.progress = file.pos
      }
      puts ""
    }
  rescue Exception => e
    puts "分析中にエラーが発生しました。もう一度起動しなおしてください。"
    puts %Q(error_class=[#{e.class}] error_message=[#{e.message}])
    puts %Q(#{e.backtrace_locations})
    onError = true
  end

}

if !onError then
  today = Time.now
  begin
    File.open("#{File.dirname(__FILE__)}/ip_analized_#{today.strftime("%Y%m%d%H%M%S")}","w") {|file|
      file.puts ipList.sort{|(k1,v1),(k2,v2)| v2 <=> v1}
    }
    puts "ipアドレスの一覧を#{File.dirname(__FILE__)}/ip_analized_#{today.strftime("%Y%m%d%H%M%S")}に出力しました。"

    File.open("#{File.dirname(__FILE__)}/hourly_analized_#{today.strftime("%Y%m%d%H%M%S")}","w") {|file|
      hourly.each{|time,count|
        file.puts "#{time}\t#{count}"}
    }
    puts "時間帯別のアクセス件数一覧を#{File.dirname(__FILE__)}/hourly_analized_#{today.strftime("%Y%m%d%H%M%S")}に出力しました。"

  rescue Exception => e
    puts "結果を出力するファイルを作成できませんでした。もう一度起動しなおしてください。"
    puts %Q(error_class=[#{e.class}] error_message=[#{e.message}])
  end
end