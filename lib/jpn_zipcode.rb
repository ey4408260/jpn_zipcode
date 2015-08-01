require "jpn_zipcode/version"

module JpnZipcode

	def fmt_input(zipcode)
		if zipcode.to_s =~ /^\d{7}$/
			return zipcode
		elsif zipcode.to_s =~ /^\d{3}-\d{4}/
			zipcode = zipcode.delete("-")
			return zipcode
		else
			return ""
		end
	end

end
