# Geovana Cordeiro de Oliveira - 1722130073
# Jorge L. C. O. Júnior - 1812130118
# Milena N.M. Brito - 1722130027

# Receber nome da imagem
nome = input ("Informe o nome da imagem com extensão. Exemplo: imagem.png: ", "s");

# Leitura da imagem
img = imread(nome);

# Soma de todas as posições da matriz
soma1 = sum(img);
soma = sum(soma1);

# Pega o tamanho das linhas e colunas da matriz
linhas = rows(img);
colunas = columns(img);

# Calcula a quantidade de itens dentro da matriz
items = linhas * colunas;

# Calcula a média dos pixels
average = soma / items;

# Define gamma através da verificação da imagem entre claro e escuro
if(average > 128)
  gamma = 0.9;
else
  gamma = 1.05;
endif

# Altera a imagem de acordo com o gamma
alter = abs(img.^gamma)

# Mostra a imagem original e a alterada para comparação
subplot(221); imshow(img); title('Original');
subplot(222); imshow(alter); title('Alterada');