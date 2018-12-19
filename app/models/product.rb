class Product < ApplicationRecord
	searchkick text_start: [:name]

	def search_data 
		{
			name: name,
			description: description
		}
	end
end
