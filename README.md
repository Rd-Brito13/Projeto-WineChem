
## Projeto: WineChem -  Agrupamento e Análise Química de Vinhos

Este projeto aplica ténicas avançadas de apredizado Não supervisionado para identificar padrões entre os componentes químicos de diferentes vinhos.
O objetivo é explorar e agrupar amostras com caractéricas semelhantes, avaliando algortimos de clustering tradicionais e baseados em estimação de kernel.
Dataset utilizado:
Kaggle - Wine Dataset for Clustering
https://www.kaggle.com/datasets/harrywang/wine-dataset-for-clustering

---
## Objetivo do projeto
O estudo visa:
- Identificar padrões químicos entre os vinhos
- Agrupar amostras em segmentos significativos
- Avaliar diferentes algortimos de clustering
- Utilizar métricas estatísticas para comparações objetivas
- Aplicar PCA para redução de dimensionalidade e análise visual
- Compreender como parâmetros influenciam a formação dos clusters

---
## Estrutura do projeto

Agrupamento_Vinhos/

├─ data/

│  └─ raw/ <- wine-clustering.csv

├─ notebooks/

│  └─ Agrupamento_Vinho.ipynb <- Análise, tratamento e modelagem

├─ requirements/

│  └─ requirements.txt <- Dependências do projeto

├─ Setup.bat <- Script para criar venv, instalar dependências e kernel Jupyter

└─ README.md <- Documentação do projeto

---
## Descrição do Dataset
- 178 amostras
- 13 variáveis químicas, incluindo:
 - Álcool
 - Ácido Málico
 - Cinzas
 - Magnésio
 - Flavonoides
 - Proantocianinas
 - Fenóis totais
 - Intensidade e tonalidade da cor
 - Entre outras
As festures passsaram por padronização com StandardScaler e/ou PCA, antes da modelagem 

---

## Pipeline do projeto

1. Importação dos dados

vinhos = pd.read_csv('wine-clustering.csv', sep=',', encoding='utf-8')
vinhos.head()

---

2. Exploração e pré-processamento

- Tratamento e inspeção de nulos
- Estatística Descritivas
- Histogramas, boxplots, scatterplots
- Padronização com StandarScaler
- Redução opcional com PCA (2 componententes principais)

---

3. Algortimos de Agrupamento Aplicados

K-Means:
- Testes com k variando de 2 a 10
- Avaliação por:
 - Silhouette Score
 - Clinski-Harabasz
 - Davies-Bouldin
 - Elbow Method
- Avaliação com e sem PCA
  
Aglomerative Clustering (Hierárquico)
- Avaliação com dendograma
- Silhouette e análise visual
- Avaliação com e sem PCA
  
DBSCAN
- Busca por:
  - eps
  - min_samples
- Métricas e mapas de densidade
- Avaliação com e sem PCA
  
MeanShift
- Busca por:
 - Bandwidth (via linspace)
 - bin_seeding
- Avaliação com e sem PCA
- Comparação entre quantidade de clusters, estabilidade e métricas     

---

4. Definição do Número de Clusters
Como diferentes algortimos exigem diferentes abordagens, esta etapa foi divida em subseçãoes:

K-Means e Hierárquico
- Elbow method
- Silhouette Score
- Dendograma (Hierárquico)
- Análise com e sem PCA 

DBSCAN
- "Elbow do DBSCAN": curva k-distance
- Análise visual de densidade
- Métricas de clusterização
- Análise com e sem PCA 

MeanShift
- Varredura do bandwidth
- Avaliação combinanda por:
  - Silhouette
  - Calinski
  - Davies-Bouldin
  - Separação visual
- Análise com e sem PCA 



---

5. Resultados obtidos

PCA + Meanshift (Melhor Configuração)
- 4 Clusters bem definidos
- Métricas Robustas
  - Silhouette: 0.50
  - Calinski: Muito elevado
  - Davies-Bouldin: 0.80
- Separação visual excelente
Conclusões gerais
- A redução por PCA tornou os clusters mais separados, especial para K-Means e MeanShift
- DBSCAN foi útil para entender densidades, mas exigiu parametrização cuidadosa.
- MeanShift se destacou ao oferecer agrupamentos estáveis sem necessidade de definir k
- K-Means apresentou uma boa perfomace para k = 3, alinhado visualmente com a estrutura natural do dados. 

---

## Tecnologias envolvidas

Python 3.x

Pandas / NumPy

Matplotlib / Seaborn / Plotly

Scikit-learn

SciPy

KModes

---

## Como executar o projeto

---

## Obs: Para rodar no Google Colab, carregue o notebook e o dataset e ajuste o caminho se necessário.

---
Utilizando o Jupyter (Opção 1)

Clone o repositório:

```bash
1. git clone https://github.com/Rd-Brito13/Projeto-WineChem

2. Execute o script Setup.bat: (Ele criará o ambiente virtual, instalará as dependências e registrará o kernel no Jupyter)

3. Abra o notebook no Jupyter e selecione o kernel criado: Kernel -> Change Kernel -> Python (WineChem-)

4. Execute o notebook normalmente.
```

---
Utilizando Google Colab (Opção 2)
- Faça o upload do notebook e dataset
- Ajuste o caminho do arquivo e instale as depedências, se necessário.
---
## Autor
---
**Rodrigo Brito**

📧 [rd.brito13@gmail.com](mailto:rd.brito13@gmail.com)  
💼 [LinkedIn](https://www.linkedin.com/in/rd-brito13)

---
⭐ Se este projeto foi útil, não esqueça de deixar uma estrela no repositório!
