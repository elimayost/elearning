class NotZeroValidator < ActiveModel::EachValidator  
	def validate_each(object, attribute, value)  
		if value.nil? || value < 0.01  
			object.errors[attribute] << (options[:message] || "must be bigger than zero")  
		end  
	end  
end  
