class Produto < ActiveRecord::Base
  belongs_to :grupo

  def self.max_prod(grupo_id)
    max = Produto.where(grupo_id: grupo_id).maximum(:id)

    cod_prod = (max || 0) + 1

    cod_prod = sprintf('%4.4d.%4.4d', grupo_id, cod_prod)
  end
end
