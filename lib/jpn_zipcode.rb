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
			if address.is_a? String
				return address
			else
				return ""
			end
		end

		def get_address(num)
			filename = "http://xxx.csv"
			phash = open_csv(filename)
			postnum = fmt_input(num)
			if phash.size = 0
				return ""
			end
        	if postnum.length = 0
				return ""
			end
			return find_zip(postnum,phash)	
		end

	end

end
