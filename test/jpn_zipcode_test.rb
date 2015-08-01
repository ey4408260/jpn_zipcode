# -*- encoding: utf-8 -*-
require 'test_helper'

class JpnZipcodeTest < Minitest::Test

  def setup
      @main = ::JpnZipcode::Main.new
  end

  def test_open_csv
      empty_hash = Hash.new
      test_hash = {"0600000" => "0600000,北海道,札幌市　中央区,以下に掲載がない場合,HOKKAIDO,SAPPORO SHI CHUO KU,IKANIKEISAIGANAIBAAI\n"}
        
      assert_equal test_hash, @main.open_csv("test/resource/test.csv"), 'OK'
#      assert_equal empty_hash, @main.open_csv("dummy.csv") 'NG'
  end

   def test_fmt_input
       assert_equal '1234567', @main.fmt_input('1234567'), 'OK'
       assert_equal '1234567', @main.fmt_input('123-4567'), 'OK'
       assert_equal "", @main.fmt_input('1'), 'NG'
       assert_equal "", @main.fmt_input("12345678"), 'NG'
   end

    def test_find_zip()
      hash = {}
      hash["1234567"] = "TOKYO"       
      assert_equal "TOKYO", @main.find_zip("1234567", hash)
      assert_equal "", @main.find_zip("0000000", hash)
    end

    def test_get_address()
      assert_equal "1400002,東京都,品川区,東品川,TOKYO TO,SHINAGAWA KU,HIGASHISHINAGAWA\n", @main.get_address("1400002")
    end
end

