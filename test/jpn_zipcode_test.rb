# -*- coding: utf-8 -*-
require 'test_helper'

class JpnZipcodeTest < Minitest::Test
  def setup
      @main = ::JpnZipcode::Main.new
  end
  def test_that_it_has_a_version_number
    refute_nil ::JpnZipcode::VERSION
  end

 # def test_it_does_something_useful
 #  assert false
 # end
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
end
