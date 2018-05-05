class Calendar

  @@number = 0
  def self.str_to_date(date)
    today = Time.now

    begin

      #01/Jan/2000:01:01:01
      if date.match(/\d{2}\/\w{3}\/\d{4}:\d{2}:\d{2}:\d{2}/) then

        case date.slice(/\w{3}/)

        #date型に変換
        when "Jan" then
          @@number = Time.local(date.slice(7,4), 1, date.slice(0,2), date.slice(12,2), date.slice(15,2), date.slice(18,2))
        when "Fab" then
          @@number = Time.local(date.slice(7,4), 2, date.slice(0,2), date.slice(12,2), date.slice(15,2), date.slice(18,2))
        when "Mar" then
          @@number = Time.local(date.slice(7,4), 3, date.slice(0,2), date.slice(12,2), date.slice(15,2), date.slice(18,2))
        when "Apr" then
          @@number = Time.local(date.slice(7,4), 4, date.slice(0,2), date.slice(12,2), date.slice(15,2), date.slice(18,2))
        when "May" then
          @@number = Time.local(date.slice(7,4), 5, date.slice(0,2), date.slice(12,2), date.slice(15,2), date.slice(18,2))
        when "Jun" then
          @@number = Time.local(date.slice(7,4), 6, date.slice(0,2), date.slice(12,2), date.slice(15,2), date.slice(18,2))
        when "Jul" then
          @@number = Time.local(date.slice(7,4), 7, date.slice(0,2), date.slice(12,2), date.slice(15,2), date.slice(18,2))
        when "Aug" then
          @@number = Time.local(date.slice(7,4), 8, date.slice(0,2), date.slice(12,2), date.slice(15,2), date.slice(18,2))
        when "Sep" then
          @@number = Time.local(date.slice(7,4), 9, date.slice(0,2), date.slice(12,2), date.slice(15,2), date.slice(18,2))
        when "Oct" then
          @@number = Time.local(date.slice(7,4), 10, date.slice(0,2), date.slice(12,2), date.slice(15,2), date.slice(18,2))
        when "Nov" then
          @@number = Time.local(date.slice(7,4), 11, date.slice(0,2), date.slice(12,2), date.slice(15,2), date.slice(18,2))
        when "Dec" then
          @@number = Time.local(date.slice(7,4), 12, date.slice(0,2), date.slice(12,2), date.slice(15,2), date.slice(18,2))
        end

        #01/Jan/2000:01:01
      elsif date.match(/\d{2}\/\w{3}\/\d{4}:\d{2}:\d{2}/) then

        case date.slice(/\w{3}/)

        #date型に変換
        when "Jan" then
          @@number = Time.local(date.slice(7,4), 1, date.slice(0,2), date.slice(12,2), date.slice(15,2), 0)
        when "Fab" then
          @@number = Time.local(date.slice(7,4), 2, date.slice(0,2), date.slice(12,2), date.slice(15,2), 0)
        when "Mar" then
          @@number = Time.local(date.slice(7,4), 3, date.slice(0,2), date.slice(12,2), date.slice(15,2), 0)
        when "Apr" then
          @@number = Time.local(date.slice(7,4), 4, date.slice(0,2), date.slice(12,2), date.slice(15,2), 0)
        when "May" then
          @@number = Time.local(date.slice(7,4), 5, date.slice(0,2), date.slice(12,2), date.slice(15,2), 0)
        when "Jun" then
          @@number = Time.local(date.slice(7,4), 6, date.slice(0,2), date.slice(12,2), date.slice(15,2), 0)
        when "Jul" then
          @@number = Time.local(date.slice(7,4), 7, date.slice(0,2), date.slice(12,2), date.slice(15,2), 0)
        when "Aug" then
          @@number = Time.local(date.slice(7,4), 8, date.slice(0,2), date.slice(12,2), date.slice(15,2), 0)
        when "Sep" then
          @@number = Time.local(date.slice(7,4), 9, date.slice(0,2), date.slice(12,2), date.slice(15,2), 0)
        when "Oct" then
          @@number = Time.local(date.slice(7,4), 10, date.slice(0,2), date.slice(12,2), date.slice(15,2), 0)
        when "Nov" then
          @@number = Time.local(date.slice(7,4), 11, date.slice(0,2), date.slice(12,2), date.slice(15,2), 0)
        when "Dec" then
          @@number = Time.local(date.slice(7,4), 12, date.slice(0,2), date.slice(12,2), date.slice(15,2), 0)
        end

        #01/Jan/2000:01
      elsif date.match(/\d{2}\/\w{3}\/\d{4}:\d{2}/) then

        case date.slice(/\w{3}/)

        #date型に変換
        when "Jan" then
          @@number = Time.local(date.slice(7,4), 1, date.slice(0,2), date.slice(12,2), 0, 0)
        when "Fab" then
          @@number = Time.local(date.slice(7,4), 2, date.slice(0,2), date.slice(12,2), 0, 0)
        when "Mar" then
          @@number = Time.local(date.slice(7,4), 3, date.slice(0,2), date.slice(12,2), 0, 0)
        when "Apr" then
          @@number = Time.local(date.slice(7,4), 4, date.slice(0,2), date.slice(12,2), 0, 0)
        when "May" then
          @@number = Time.local(date.slice(7,4), 5, date.slice(0,2), date.slice(12,2), 0, 0)
        when "Jun" then
          @@number = Time.local(date.slice(7,4), 6, date.slice(0,2), date.slice(12,2), 0, 0)
        when "Jul" then
          @@number = Time.local(date.slice(7,4), 7, date.slice(0,2), date.slice(12,2), 0, 0)
        when "Aug" then
          @@number = Time.local(date.slice(7,4), 8, date.slice(0,2), date.slice(12,2), 0, 0)
        when "Sep" then
          @@number = Time.local(date.slice(7,4), 9, date.slice(0,2), date.slice(12,2), 0, 0)
        when "Oct" then
          @@number = Time.local(date.slice(7,4), 10, date.slice(0,2), date.slice(12,2), 0, 0)
        when "Nov" then
          @@number = Time.local(date.slice(7,4), 11, date.slice(0,2), date.slice(12,2), 0, 0)
        when "Dec" then
          @@number = Time.local(date.slice(7,4), 12, date.slice(0,2), date.slice(12,2), 0, 0)
        end

        #01/Jan/2000
      elsif date.match(/\d{2}\/\w{3}\/\d{4}/) then

        case date.slice(/\w{3}/)

        #date型に変換
        when "Jan" then
          @@number = Time.local(date.slice(7,4), 1, date.slice(0,2), 0, 0, 0)
        when "Fab" then
          @@number = Time.local(date.slice(7,4), 2, date.slice(0,2), 0, 0, 0)
        when "Mar" then
          @@number = Time.local(date.slice(7,4), 3, date.slice(0,2), 0, 0, 0)
        when "Apr" then
          @@number = Time.local(date.slice(7,4), 4, date.slice(0,2), 0, 0, 0)
        when "May" then
          @@number = Time.local(date.slice(7,4), 5, date.slice(0,2), 0, 0, 0)
        when "Jun" then
          @@number = Time.local(date.slice(7,4), 6, date.slice(0,2), 0, 0, 0)
        when "Jul" then
          @@number = Time.local(date.slice(7,4), 7, date.slice(0,2), 0, 0, 0)
        when "Aug" then
          @@number = Time.local(date.slice(7,4), 8, date.slice(0,2), 0, 0, 0)
        when "Sep" then
          @@number = Time.local(date.slice(7,4), 9, date.slice(0,2), 0, 0, 0)
        when "Oct" then
          @@number = Time.local(date.slice(7,4), 10, date.slice(0,2), 0, 0, 0)
        when "Nov" then
          @@number = Time.local(date.slice(7,4), 11, date.slice(0,2), 0, 0, 0)
        when "Dec" then
          @@number = Time.local(date.slice(7,4), 12, date.slice(0,2), 0, 0, 0)
        end

        #01/Jan
      elsif date.match(/\d{2}\/\w{3}/) then

        case date.slice(/\w{3}/)

        #date型に変換
        when "Jan" then
          @@number = Time.local(today.year, 1, date.slice(0,2), 0, 0, 0)
        when "Fab" then
          @@number = Time.local(today.year, 2, date.slice(0,2), 0, 0, 0)
        when "Mar" then
          @@number = Time.local(today.year, 3, date.slice(0,2), 0, 0, 0)
        when "Apr" then
          @@number = Time.local(today.year, 4, date.slice(0,2), 0, 0, 0)
        when "May" then
          @@number = Time.local(today.year, 5, date.slice(0,2), 0, 0, 0)
        when "Jun" then
          @@number = Time.local(today.year, 6, date.slice(0,2), 0, 0, 0)
        when "Jul" then
          @@number = Time.local(today.year, 7, date.slice(0,2), 0, 0, 0)
        when "Aug" then
          @@number = Time.local(today.year, 8, date.slice(0,2), 0, 0, 0)
        when "Sep" then
          @@number = Time.local(today.year, 9, date.slice(0,2), 0, 0, 0)
        when "Oct" then
          @@number = Time.local(today.year, 10, date.slice(0,2), 0, 0, 0)
        when "Nov" then
          @@number = Time.local(today.year, 11, date.slice(0,2), 0, 0, 0)
        when "Dec" then
          @@number = Time.local(today.year, 12, date.slice(0,2), 0, 0, 0)
        end

        #Jan/2018
      elsif date.match(/\w{3}\/\d{4}/) then

        case date.slice(/\w{3}/)

        #date型に変換
        when "Jan" then
          @@number = Time.local(date.slice(4,4), 1, 1, 0, 0, 0)
        when "Fab" then
          @@number = Time.local(date.slice(4,4), 2, 1, 0, 0, 0)
        when "Mar" then
          @@number = Time.local(date.slice(4,4), 3, 1, 0, 0, 0)
        when "Apr" then
          @@number = Time.local(date.slice(4,4), 4, 1, 0, 0, 0)
        when "May" then
          @@number = Time.local(date.slice(4,4), 5, 1, 0, 0, 0)
        when "Jun" then
          @@number = Time.local(date.slice(4,4), 6, 1, 0, 0, 0)
        when "Jul" then
          @@number = Time.local(date.slice(4,4), 7, 1, 0, 0, 0)
        when "Aug" then
          @@number = Time.local(date.slice(4,4), 8, 1, 0, 0, 0)
        when "Sep" then
          @@number = Time.local(date.slice(4,4), 9, 1, 0, 0, 0)
        when "Oct" then
          @@number = Time.local(date.slice(4,4), 10, 1, 0, 0, 0)
        when "Nov" then
          @@number = Time.local(date.slice(4,4), 11, 1, 0, 0, 0)
        when "Dec" then
          @@number = Time.local(date.slice(4,4), 12, 1, 0, 0, 0)
        end

        #2018/01/01:01:01:01
      elsif date.match(/\d{4}\/\d{2}\/\d{2}:\d{2}:\d{2}:\d{2}/) then

        #date型に変換
        @@number = Time.local(date.slice(0,4), date.slice(5,2), date.slice(8,2), date.slice(11,2), date.slice(14,2), date.slice(17,2))

        #2018/01/01:01:01
      elsif date.match(/\d{4}\/\d{2}\/\d{2}:\d{2}:\d{2}/) then

        #date型に変換
        @@number = Time.local(date.slice(0,4), date.slice(5,2), date.slice(8,2), date.slice(11,2), date.slice(14,2), 0)

        #2018/01/01:01
      elsif date.match(/\d{4}\/\d{2}\/\d{2}:\d{2}/) then

        #date型に変換
        @@number = Time.local(date.slice(0,4), date.slice(5,2), date.slice(8,2), date.slice(11,2), 0, 0)

        #2018/01/01
      elsif date.match(/\d{4}\/\d{2}\/\d{2}/) then

        #date型に変換
        @@number = Time.local(date.slice(0,4), date.slice(5,2), date.slice(8,2), 0, 0, 0)

        #2018/01
      elsif date.match(/\d{4}\/\d{2}/) then

        #date型に変換
        @@number = Time.local(date.slice(0,4), date.slice(5,2), 1, 0, 0, 0)

        #01/01:01:01:01
      elsif date.match(/\d{2}\/\d{2}:\d{2}:\d{2}:\d{2}/) then

        #date型に変換
        @@number = Time.local(today.year, date.slice(0,2), date.slice(3,2), date.slice(6,2), date.slice(9,2), date.slice(12,2))

        #01/01:01:01
      elsif date.match(/\d{2}\/\d{2}:\d{2}:\d{2}/) then

        #date型に変換
        @@number = Time.local(today.year, date.slice(0,2), date.slice(3,2), date.slice(6,2), date.slice(9,2), 0)

        #01/01:01
      elsif date.match(/\d{2}\/\d{2}:\d{2}/) then

        #date型に変換
        @@number = Time.local(today.year, date.slice(0,2), date.slice(3,2), date.slice(6,2), 0, 0)

        #01/01
      elsif date.match(/\d{2}\/\d{2}/) then

        #date型に変換
        @@number = Time.local(today.year, date.slice(0,2), date.slice(3,2), 0, 0, 0)

        #2018年01月01日01時01分01秒
      elsif date.match(/\d{4}年\d{2}月\d{2}日\d{2}時\d{2}分\d{2}秒/) then

        #date型に変換
        @@number = Time.local(date.slice(0,4), date.slice(5,2), date.slice(8,2), date.slice(11,2), date.slice(14,2), date.slice(17,2))

        #2018年01月01日01時01分
      elsif date.match(/\d{4}年\d{2}月\d{2}日\d{2}時\d{2}分/) then

        #date型に変換
        @@number = Time.local(date.slice(0,4), date.slice(5,2), date.slice(8,2), date.slice(11,2), date.slice(14,2), 0)

        #2018年01月01日01時
      elsif date.match(/\d{4}年\d{2}月\d{2}日\d{2}時/) then

        #date型に変換
        @@number = Time.local(date.slice(0,4), date.slice(5,2), date.slice(8,2), date.slice(11,2), 0, 0)

        #2018年01月01日
      elsif date.match(/\d{4}年\d{2}月\d{2}日/) then

        #date型に変換
        @@number = Time.local(date.slice(0,4), date.slice(5,2), date.slice(8,2), 0, 0, 0)

        #2018年01月
      elsif date.match(/\d{4}年\d{2}月/) then

        #date型に変換
        @@number = Time.local(date.slice(0,4), date.slice(5,2), 1, 0, 0, 0)

        #01月01日01時01分01秒
      elsif date.match(/\d{2}月\d{2}日\d{2}時\d{2}分\d{2}秒/) then

        #date型に変換
        @@number = Time.local(today.year, date.slice(0,2), date.slice(3,2), date.slice(6,2), date.slice(9,2), date.slice(12,2))

        #01月01日01時01分
      elsif date.match(/\d{2}月\d{2}日\d{2}時\d{2}分/) then

        #date型に変換
        @@number = Time.local(today.year, date.slice(0,2), date.slice(3,2), date.slice(6,2), date.slice(9,2), 0)

        #01月01日01時
      elsif date.match(/\d{2}月\d{2}日\d{2}時/) then

        #date型に変換
        @@number = Time.local(today.year, date.slice(0,2), date.slice(3,2), date.slice(6,2), 0, 0)

        #01月01日
      elsif date.match(/\d{2}月\d{2}日/) then

        #date型に変換
        @@number = Time.local(today.year, date.slice(0,2), date.slice(3,2), 0, 0, 0)

        #01月
      elsif date.match(/\d{2}月/) then

        #date型に変換
        @@number = Time.local(today.year, date.slice(0,2), 1, 0, 0, 0)

        #2018年
      elsif date.match(/\d{4}年/) then

        #date型に変換
        @@number = Time.local(date.slice(0,4), 1, 1, 0, 0, 0)

        #入力ミスを処理してしまう可能性があるので使わない方が良い
=begin
      #2018
    elsif date.match(/\d{4}/) then

      #date型に変換
      @@number = Time.local(date.slice(0,4), 1, 1, 0, 0, 0)

      #01
    elsif date.match(/\d{2}/) then

      #date型に変換
      @@number = Time.local(today.year, date.slice(0,2), 1, 0, 0, 0)
=end

      end

    rescue => e
      puts "対応できない日付の書式です。もう一度入力してください"
    end

    return @@number
  end
end