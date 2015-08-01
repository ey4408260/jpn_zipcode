# -*- encoding: utf-8 -*-
require 'test_helper'

class JpnZipcodeTest < Minitest::Test

  def setup
      @main = ::JpnZipcode::Main.new
  end
  def test_that_it_has_a_version_number
    refute_nil ::JpnZipcode::VERSION
  end

#  def test_it_does_something_useful
#    assert false
#  end

  def test_open_csv

      empty_hash = Hash.new
      test_hash = {
"0600000" => "0600000,北海道,札幌市　中央区,以下に掲載がない場合,HOKKAIDO,SAPPORO SHI CHUO KU,IKANIKEISAIGANAIBAAI",
"0640941" => "0640941,北海道,札幌市　中央区,旭ケ丘,HOKKAIDO,SAPPORO SHI CHUO KU,ASAHIGAOKA",
"0600041" => "0600041,北海道,札幌市　中央区,大通東,HOKKAIDO,SAPPORO SHI CHUO KU,ODORIHIGASHI"
       }
        
      assert_equal test_hash, @main.open_csv("test/resource/test.csv"), 'OK'
#      assert_equal empty_hash, @main.open_csv("dummy.csv") 'NG'
  end

end
