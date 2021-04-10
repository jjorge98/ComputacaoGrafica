# Geovana Cordeiro de Oliveira - 1722130073
# Jorge L. C. O. J�nior - 1812130118
# Milena N.M. Brito - 1722130027

# Receber nome da imagem
nome = input ("Informe o nome da imagem com extens�o. Exemplo: imagem.png: ", "s");

# Leitura da imagem
img = imread(nome);

# Soma de todas as posi��es da matriz
soma1 = sum(img);
soma = sum(soma1);

# Pega o tamanho das linhas e colunas da matriz
linhas = rows(img);
colunas = columns(img);

# Calcula a quantidade de itens dentro da matriz
items = linhas * colunas;

# Calcula a m�dia dos pixels
average = soma / items;

# Define gamma atrav�s da verifica��o da imagem entre claro e escuro
if(average > 128)
  gamma = 0.9;
else
  gamma = 1.05;
endif

# Altera a imagem de acordo com o gamma
alter = abs(img.^gamma)

# Mostra a imagem original e a alterada para compara��o
subplot(221); imshow(img); title('Original');
subplot(222); imshow(alter); title('Alterada');