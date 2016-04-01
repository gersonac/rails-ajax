class AddGrupoRefToProdutos < ActiveRecord::Migration
  def change
    add_reference :produtos, :grupo, index: true
    add_foreign_key :produtos, :grupos
  end
end
