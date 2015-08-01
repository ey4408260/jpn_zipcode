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
       assert_equal @main.fmt_input('1234567'), '1234567', 'OK'
       assert_equal @main.fmt_input('123‐4567'), '1234567', 'OK'
       assert_equal @main.fmt_input(1), "", 'NG'
       assert_equal @main.fmt_input(12345678), "", 'NG'
    end

 #   def fnd_zip
 #       
 #       assert_equal @main.fnd_zip('1234567'),''
 #   end
end
