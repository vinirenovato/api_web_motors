Dado("que eu faça um GET na api de marcas") do
  @get = HTTParty.get "http://desafioonline.webmotors.com.br/api/OnlineChallenge/Make"
end

Dado("que eu faça um GET na api de marcas passando o id <id>") do |table|
  table.hashes.each do |row|
    @get = HTTParty.get "http://desafioonline.webmotors.com.br/api/OnlineChallenge/Model?MakeID=" + (row[:id])
  end
end

Dado("que eu faça um GET na api de versões passando o modelId <modId>") do |table|
  table.hashes.each do |row|
    @get = HTTParty.get "http://desafioonline.webmotors.com.br/api/OnlineChallenge/Version?ModelID=" + (row[:modId])
  end
end

Dado("que eu faça um GET na api de estoque passando a page <page>") do |table|
  table.hashes.each do |row|
    @get = HTTParty.get "http://desafioonline.webmotors.com.br/api/OnlineChallenge/Vehicles?Page=" + (row[:page])
  end
end

Quando("recebo o satus code positivo") do
  expect(@get.code).to eq 200
end

Então("recebo o conteudo da requisição") do
  puts @get.body
end




