class Page < ActiveRecord::Base

	#indicando que ela tem uma instância em um Subject
	belongs_to :subject

	has_and_belongs_to_many :editors, :class_name => "AdminUser"

end
