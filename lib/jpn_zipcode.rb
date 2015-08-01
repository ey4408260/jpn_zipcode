require "jpn_zipcode/version"

module JpnZipcode
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
    def
end
