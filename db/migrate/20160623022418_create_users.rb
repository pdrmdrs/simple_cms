class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.column "first_name", :string, :limit => 25 #cria coluna nomeada first_name, do tipo string, com tamanho de 25 caracteres
      t.string "last_name", :limit => 50 #coluna string limite 50 caracteres
      t.string "email", :default => "", :null => false #coluna email com valor default "" e null = false indicando que não pode ser nulo
      t.string "password", :limit => 40 #coluna password com limite 40 caracteres

      #não precisa da coluna id, Rails implementa por default
      #t.datetime "created_at" #coluna do tipo datetime indicando a data de criação Rails popula automaticamente essa
      #t.datetime "updated_at" #coluna datetime indicando data de atualização Rails popula automaticamente essa
      t.timestamps null: false #versão simples das linhas acima
    end
  end

  def down
  	drop_table :users
  end
end
