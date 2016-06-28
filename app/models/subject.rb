class Subject < ActiveRecord::Base

	#indicando que um Subject tem apenas uma Page
	#has_one :page

	#indicando que um Subject tem várias Pages
	has_many :pages

	scope :visible, lambda {where(:visible => true)}
	scope :invisible, lambda {where(:visible => false)}

	scope :sorted, lambda {order("subjects.position ASC")}
	scope :newest_first, lambda {order("subjects.created_at DESC")}

	scope :search, lambda {|query|
		where(["name LIKE ?", "%#{query}%"])
	}
end
