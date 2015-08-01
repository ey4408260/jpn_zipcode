module JpnZipcode
  class Main
   def open_csv(filename)
        #File.open(filename) do |csv|
	File.open("resource/KEN_ALL_ROME.CSV") do |csvfile|
            csvfile.each_line do |fileline|
		puts fileline
	    end
	end
    end
    rescue SystemCallError => e
  	puts %Q(class=[#{e.class}] message=[#{e.message}])
    rescue IOError => e
  	puts %Q(class=[#{e.class}] message=[#{e.message}])
  end
end
