library(readxl)
X1_Taxa_de_risco_de_pobreza_da_população_empregada <- as.data.frame(read_excel("C:/Users/gonca/Downloads/Goncalo/1 - Taxa de risco de pobreza da população empregada.xlsx", 
                                                                 range = "A8:AI26"))
X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB <- as.data.frame(read_excel("C:/Users/gonca/Downloads/Goncalo/2 - Despesas em atividades de investigação e desenvolvimento (I&D) em % do PIB.xlsx", 
                                                                                        range = "A7:FE34"))
X3_Taxa_de_desemprego_de_longa_duração_por_sexo <- as.data.frame(read_excel("C:/Users/gonca/Downloads/Goncalo/3 - Taxa de desemprego de longa duração por sexo.xlsx", 
                                                              range = "A7:CY33"))
X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento <- as.data.frame(read_excel("C:/Users/gonca/Downloads/Goncalo/4 - OBJETIVO - Financiamento da União Europeia aos países em desenvolvimento.xlsx", 
                                                                                        range = "A8:AI29"))


# Remove numbers and periods from column names
colnames(X1_Taxa_de_risco_de_pobreza_da_população_empregada) <- gsub("[0-9.]", "", colnames(X1_Taxa_de_risco_de_pobreza_da_população_empregada))
colnames(X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB) <- gsub("[0-9.]", "", colnames(X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB))
colnames(X3_Taxa_de_desemprego_de_longa_duração_por_sexo) <- gsub("[0-9.]", "", colnames(X3_Taxa_de_desemprego_de_longa_duração_por_sexo))
colnames(X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento) <- gsub("[0-9.]", "", colnames(X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento))


library(gdata) # call the library


# table formatting X1_Taxa_de_risco_de_pobreza_da_população_empregada
rownames(X1_Taxa_de_risco_de_pobreza_da_população_empregada)<-as.character(X1_Taxa_de_risco_de_pobreza_da_população_empregada[,1]) # Converter as linhas em anos
X1_Taxa_de_risco_de_pobreza_da_população_empregada<-X1_Taxa_de_risco_de_pobreza_da_população_empregada[,-1] # Copiar a tabela para ela propria sem a primera coluna
X1_Taxa_de_risco_de_pobreza_da_população_empregada<-X1_Taxa_de_risco_de_pobreza_da_população_empregada[-seq(2,nrow(X1_Taxa_de_risco_de_pobreza_da_população_empregada),by=2),] # Apenas ficar com dados de 2 em 2 anos
X1_Taxa_de_risco_de_pobreza_da_população_empregada<-unmatrix(X1_Taxa_de_risco_de_pobreza_da_população_empregada, byrow=TRUE) # junta os anos com os paises
lista_indices<-which(X1_Taxa_de_risco_de_pobreza_da_população_empregada==0) # Ir buscar todas as linhas com valor 0
X1_Taxa_de_risco_de_pobreza_da_população_empregada<-X1_Taxa_de_risco_de_pobreza_da_população_empregada[-lista_indices] # Retirar as linhas da tabela

# table formatting X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB
rownames(X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB)<-as.character(X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB[,1]) # Converter as linhas em anos
X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB<-X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB[,-1] # Copiar a tabela para ela propria sem a primera coluna
X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB<-X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB[-seq(1,nrow(X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB),by=2),] # Apenas ficar com dados de 2 em 2 anos
X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB<-unmatrix(X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB, byrow=TRUE) # junta os anos com os paises
lista_indices<-which(X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB==0) # Ir buscar todas as linhas com valor 0
X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB<-X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB[-lista_indices] # Retirar as linhas da tabela

# table formatting X3_Taxa_de_desemprego_de_longa_duração_por_sexo
rownames(X3_Taxa_de_desemprego_de_longa_duração_por_sexo)<-as.character(X3_Taxa_de_desemprego_de_longa_duração_por_sexo[,1]) # Converter as linhas em anos
X3_Taxa_de_desemprego_de_longa_duração_por_sexo<-X3_Taxa_de_desemprego_de_longa_duração_por_sexo[,-1] # Copiar a tabela para ela propria sem a primera coluna
X3_Taxa_de_desemprego_de_longa_duração_por_sexo<-X3_Taxa_de_desemprego_de_longa_duração_por_sexo[-seq(1,nrow(X3_Taxa_de_desemprego_de_longa_duração_por_sexo),by=2),] # Apenas ficar com dados de 2 em 2 anos
X3_Taxa_de_desemprego_de_longa_duração_por_sexo<-unmatrix(X3_Taxa_de_desemprego_de_longa_duração_por_sexo, byrow=TRUE) # junta os anos com os paises
lista_indices<-which(X3_Taxa_de_desemprego_de_longa_duração_por_sexo==0) # Ir buscar todas as linhas com valor 0
X3_Taxa_de_desemprego_de_longa_duração_por_sexo<-X3_Taxa_de_desemprego_de_longa_duração_por_sexo[-lista_indices] # Retirar as linhas da tabela

# table formatting X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento
rownames(X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento)<-as.character(X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento[,1]) # Converter as linhas em anos
X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento<-X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento[,-1] # Copiar a tabela para ela propria sem a primera coluna
X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento<-X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento[-seq(2,nrow(X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento),by=2),] # Apenas ficar com dados de 2 em 2 anos
X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento<-unmatrix(X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento, byrow=TRUE) # junta os anos com os paises
lista_indices<-which(X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento==0) # Ir buscar todas as linhas com valor 0
X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento<-X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento[-lista_indices] # Retirar as linhas da tabela

# Intersection of tables
intersecao_tabelas<-intersect(names(X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento),names(X1_Taxa_de_risco_de_pobreza_da_população_empregada))
intersecao_tabelas<-intersect((intersecao_tabelas), names(X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB))
intersecao_tabelas<-intersect((intersecao_tabelas), names(X3_Taxa_de_desemprego_de_longa_duração_por_sexo))


# Remove from the table all values that are not common
X1_Taxa_de_risco_de_pobreza_da_população_empregada<-X1_Taxa_de_risco_de_pobreza_da_população_empregada[intersecao_tabelas]
X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB<-X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB[intersecao_tabelas]
X3_Taxa_de_desemprego_de_longa_duração_por_sexo<-X3_Taxa_de_desemprego_de_longa_duração_por_sexo[intersecao_tabelas]
X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento<-X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento[intersecao_tabelas]


# Separate the objective column into 4 classes because the range is too big
classes<-c("Class 1", "Class 2", "Class 3", "Class 4")
classes_valor<-c(1, 2, 3, 4)
breaks <- quantile(X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento, probs = c(0, 0.25, 0.5, 0.75, 1))
categories <- cut(X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento, breaks = breaks, labels = classes, include.lowest = TRUE)
X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento<-data.frame(categories)

# Merge tables into one
tabela_final<-cbind(as.data.frame(X1_Taxa_de_risco_de_pobreza_da_população_empregada), as.data.frame(X2_Despesas_em_atividades_de_investigação_e_desenvolvimento_I_D_em_do_PIB), as.data.frame(X3_Taxa_de_desemprego_de_longa_duração_por_sexo), as.data.frame(X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento))

# For formatted tables only
#tabela_final<-cbind(as.data.frame(X1_Taxa_de_risco_de_pobreza_da_população_empregada), (X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento))

library(caret) # call the library

# Assign 80 percent of data to training
lista_indices<-createDataPartition(tabela_final$X1_Taxa_de_risco_de_pobreza_da_população_empregada, p=0.8, list=FALSE)


# Create training table with 80% of the indexes
tabela_treino<-tabela_final[lista_indices,]

# Create test table with remaining 20% of indexes
tabela_teste<-tabela_final[-lista_indices,]

# decision trees
library(randomForest)
teste <- randomForest(x=tabela_treino[,0:3], y=tabela_treino[,4], ntree=100, importance=FALSE)
print(teste)
getTree(teste, 1)                                 # shows tree information, has to be drawn
teste$type                                        # confirm that it was a classification and not a regression
resultado_treino_arvores<-as.data.frame(predict(teste, newdata = tabela_teste[,1:3]))


# Calculate the training error
# Tendo em conta que os valores estão fatorizadas e eu preciso deles inteiros, no R tenho que primeiro passa-los para caracter e depois inteiros
# resultado_treino_arvores<-as.data.frame(lapply(resultado_treino_arvores, as.character)) # Primeiro tenho que converter os valores em caracteres
# resultado_treino_arvores<-as.data.frame(lapply(resultado_treino_arvores, as.numeric)) # Segundo converter para inteiros


# error calculation
# erro_resultado_treino_arvores<-sum(abs(tabela_teste$X4_OBJETIVO_Financiamento_da_União_Europeia_aos_países_em_desenvolvimento-resultado_treino_arvores))/nrow(tabela_teste)


# training accuracy
precisao_resultado_treino_arvores<-sum((tabela_teste$categories==resultado_treino_arvores$`predict(teste, newdata = tabela_teste[, 1:3])`))/nrow(tabela_teste)


# k nearest neighbors
teste <- knn3(x=tabela_treino[,1:3], y=factor(tabela_treino[,4]), k=1) # k = 1 porque como estou a usar nenhuma métrica de distância, pode haver mais que um vizinho mais proximo de classes diferentes
print(teste) # mostra número de casos por cada valor
resultado_treino_k_vizinhos<-as.data.frame(predict(teste, tabela_teste[,0:3]))
# numero_colunas<-as.data.frame(as.numeric(colnames(resultado_treino_k_vizinhos))) # não tenho mais valores, tenho classes
# previsoes_knn<-as.matrix(resultado_treino_k_vizinhos)%*% as.matrix(numero_colunas)
resultado_treino_k_vizinhos<-apply(resultado_treino_k_vizinhos, 1, which.max) # A cada linha vou buscar o numero da coluna que tem o valor máximo
resultado_treino_k_vizinhos<-data.frame(classes[resultado_treino_k_vizinhos]) # Ir buscar a classe


# training accuracy
precisao_resultado_treino_k_vizinhos<-sum((tabela_teste$categories==resultado_treino_k_vizinhos$classes.resultado_treino_k_vizinhos.))/nrow(tabela_teste)


# neural networks
library(nnet)
teste <- nnet(x=scale(tabela_treino[,1:3]), y=as.numeric(tabela_treino[,4]), size=10, linout = TRUE, skip = TRUE, maxit = 1000) # subtrair 1 a Y para os valores ficarem 0 e 1 - não se aplica aos meus dados
print(teste) # não mostra detalhe da rede, os pesos
teste$wts # pesos
previsoes_redes_neuronais<-predict(teste, scale(tabela_teste[,1:3]))
previsoes_redes_neuronais<-as.data.frame(apply(outer(previsoes_redes_neuronais, classes_valor, FUN = function(x,y)abs(x-y)),1,function(row)classes[which.min(row)]))

# training accuracy
precisao_redes_neuronais<-sum((tabela_teste$categories==previsoes_redes_neuronais$`apply(outer(previsoes_redes_neuronais, classes_valor, FUN = function(x, y) abs(x - y)), 1, function(row) classes[which.min(row)])`))/nrow(tabela_teste)


# Importance of variables
importancia_variaveis<-varImp(teste)


