class CreateGrupo < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :descricao, null: false
    end
  end
end
