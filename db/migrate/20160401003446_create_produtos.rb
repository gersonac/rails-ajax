class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :codigo, null: false
      t.string :descricao, null: false
      t.float :preco, null: false

      t.timestamps null: false
    end
  end
end
