require "jpn_zipcode/version"

module JpnZipcode
	class Main

		def fmt_input(zipcode)
			if zipcode.to_s =~ /^\d{7}$/
				return zipcode
			elsif zipcode.to_s =~ /^\d{3}-\d{4}$/
				zipcode = zipcode.delete("-")
				return zipcode
			else
				return ""
			end
		end

		def find_zip(zipcode, zip_hash)
			address = zip_hash[:zipcode]
			if address.is_a?
				return address
			else
				return ""
			end
		end

	end

end
