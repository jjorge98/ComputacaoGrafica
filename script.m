# Receber nome da imagem
nome = input ("Informe o nome da imagem com extensão. Exemplo: imagem.png: ", "s");

# Leitura da imagem
img = imread(nome)

type = 0

# Enquanto o usuário não selecionar a saída, o programa continua
while(type != 4)
# Recebe a opção do usuário
type = menu("Selecione a opção desejada: ", "Utilizar filtro vermelho", "Utilizar filtro verde", "Utilizar filtro azul", "Sair");
# Reseta a matriz da nova imagem
newimg = 0

switch(type)
case 1
for i = 1:rows(img)
for j = 1:columns(img)
  string = int2str(img(i, j))
  
  if(length(string) == 3)
  if(string(1) > string(2) && string(1) > string(3))
  newimg(i, j) = 1;
else
  newimg(i,j) = 0;
endif

else
newimg(i,j) = 0;
endif
endfor
endfor
case 2
for i = 1:rows(img)
for j = 1:columns(img)
  string = int2str(img(i, j))
  
  if(length(string) == 3)
  if(string(2) > string(1) && string(2) > string(3))
  newimg(i, j) = 1;
else
  newimg(i,j) = 0;
endif

else
newimg(i,j) = 0;
endif
endfor
endfor
case 3
for i = 1:rows(img)
for j = 1:columns(img)
  string = int2str(img(i, j))
  
  if(length(string) == 3)
  if(string(3) > string(1) && string(3) > string(2))
  newimg(i, j) = 1;
else
  newimg(i,j) = 0;
endif

else
newimg(i,j) = 0;
endif
endfor
endfor
endswitch

imshow(newimg);
endwhile