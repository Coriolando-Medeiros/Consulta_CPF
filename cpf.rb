require "cpf_cnpj"

def consulta
  puts "CPF - Apenas números"
  print "CPF: "
  numero = gets.chomp
  if CPF.valid?(numero, strict: true)
    cpf = CPF.new(numero)
    cpf_formatdado = cpf.formatted
    puts "O CPF: #{cpf_formatdado} é válido!"
  else
    cpf = CPF.new(numero)
    cpf_formatdado = cpf.formatted
    puts "O CPF: #{cpf_formatdado} é inválido!"
  end
end
puts "Consulta CPF"

consulta
