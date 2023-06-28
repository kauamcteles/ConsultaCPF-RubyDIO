require "cpf_cnpj"

def input_cpf
  input = gets.chomp
  while input.gsub(/[^\d]/, "").length != 11 || !CPF.valid?(input)
    puts "CPF inválido. Digite novamente: "
    input = gets.chomp
  end
  input
end

puts "Digite seu CPF, com pontuação e hífen.\nPor exemplo (111.111.111-11), para podermos finalizar a sua consulta: "
cpf = input_cpf

def cpf_validator(cpf)
  if CPF.valid?(cpf)
    "válido. Agora podemos dar continuidade ao seu cadastro."
  else
    "inválido. Favor digitar um CPF válido."
  end
end

puts "O CPF: #{cpf} que você digitou é #{cpf_validator(cpf)}"
