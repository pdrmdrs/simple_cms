class CreateSections < ActiveRecord::Migration
  def up
    create_table :sections do |t|
      t.integer "page_id" #poderia ser t.references :pages
      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => false
      t.string "content_type"
      t.text "content"
      t.timestamps null: false
    end
    add_index("sections", "page_id") # adicionar o índice
  end

  def down
  	drop_table :sections
  end
end
