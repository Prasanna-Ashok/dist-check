require 'csv'
require_relative 'distributor'
module Parsing
data=CSV.read("cities.csv",{headers: true, header_converters: :symbol})
hashed_data= data.map {|d| d.to_hash}
define_method(:check_area) do |reg|
 if(hashed_data.find{|v| v[:city_name].to_s == reg[:city].to_s})
 		if(hashed_data.find{|v| v[:province_name].to_s. ==reg[:state].to_s})
 			if(hashed_data.find{|v| v[:country_name].to_s == reg[:country].to_s})
 				return true
 			else
 				return false
 			end
 		end
end
if(reg[:city] == nil)
	if(hashed_data.find{|v| v[:province_name].to_s ==reg[:state].to_s})
 			if(hashed_data.find{|v| v[:country_name].to_s == reg[:country].to_s})
 				return true
			else
 				return false
 			end
 	end
 end
if(reg[:city] == nil && reg[:state] ==nil) 
 	if(hashed_data.find{|v| v[:country_name].to_s == reg[:country].to_s})
 				return true
 			else
 				return false
 			end		
end
end
end



