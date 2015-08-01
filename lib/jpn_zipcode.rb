require "jpn_zipcode/version"

module JpnZipcode
  class Main
   def open_csv(filename)
        zipHash = Hash.new
        File.open(filename) do |csv|
	#File.open("resource/KEN_ALL_ROME.CSV") do |csvfile| 
	   csvfile.each_line do |fileline|
		zipHash[fileline.split(",")[0].to_s] = fileline
	   end
	end
	return zipHash
    end
    rescue SystemCallError => e
  	puts %Q(class=[#{e.class}] message=[#{e.message}])
    rescue IOError => e
  	puts %Q(class=[#{e.class}] message=[#{e.message}])
  end
end
