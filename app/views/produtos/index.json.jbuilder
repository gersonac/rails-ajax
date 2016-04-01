json.array!(@produtos) do |produto|
  json.extract! produto, :id, :codigo, :descricao, :preco
  json.url produto_url(produto, format: :json)
end
