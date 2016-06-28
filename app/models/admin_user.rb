class AdminUser < ActiveRecord::Base
	# pode-se definir o nome da tabela do banco diferente do padrão
	# self.table_name = "table_name"

	has_and_belongs_to_many :pages
	has_many :section_edits
	has_many :sections, :through => :section_edits
end
