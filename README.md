
## Projeto: Agrupamento de Vinhos (WineChem)

Este projeto aplica técnicas de Aprendizado Não Supervisionado para identificar padrões entre os componentes químicos de diferentes tipos de vinhos.
O dataset utilizado é público e está disponível no Kaggle: Wine Dataset for Clustering.

---
## Objetivo do projeto

Identificar padrões e agrupar vinhos com base em suas características químicas, utilizando algoritmos de clustering. As análises permitem:

Explorar relações entre os componentes químicos dos vinhos;

Agrupar vinhos de forma coerente com suas propriedades físico-químicas;

Demonstrar o uso prático de algoritmos de clustering e técnicas de redução de dimensionalidade.

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
## Dataset

Fonte: Kaggle - Wine Dataset for Clustering

Número de instâncias: 178

Número de features: 13 (composição química de cada vinho)

---

## Pipeline do projeto

1. Importação dos dados
vinhos = pd.read_csv('wine-clustering.csv', sep=',', encoding='utf-8')
vinhos.head()

---

2. Exploração e pré-processamento

Verificação de valores nulos e tipos de dados

Estatísticas descritivas

Análise de distribuições, histogramas e boxplots

Padronização das variáveis com StandardScaler

Redução de dimensionalidade com PCA para análise visual e ganho de performance

---


3. Agrupamento

Foram aplicados diferentes algoritmos de clustering:

K-Means

MeanShift

Agglomerative Clustering

DBSCAN

KModes / KPrototypes

Os modelos foram avaliados visualmente e pela separabilidade dos clusters gerados.

---


4. Visualização dos resultados

Gráficos em 2D e 3D após PCA

Comparação entre clusters e tipos de vinho

---

## Resultados

Padrões identificados entre os componentes químicos dos vinhos

Agrupamentos coerentes com propriedades físico-químicas

Demonstração prática de clustering e redução de dimensionalidade

---

## Tecnologias envolvidas

Python 3.x

Pandas / NumPy

Matplotlib / Seaborn / Plotly

Scikit-learn

SciPy

KModes

---

##Como executar o projeto

---

##Obs: Para rodar no Google Colab, carregue o notebook e o dataset e ajuste o caminho se necessário.

---
Utilizando o Jupyter (Opção 1)

Clone o repositório:
```bash
1. git clone https://github.com/Rd-Brito13/Projeto-WineChem

2. Execute o script Setup.bat: (Ele criará o venv, instalará as dependências e registrará o kernel no Jupyter)

3. Abra o notebook no Jupyter e selecione o kernel criado: Kernel -> Change Kernel -> Python (WineChem)

4. Execute as células do notebook para reproduzir a análise.
```

---

## Autor

---
Rodrigo Brito

📧 rd.brito13@gmail.com

💼 LinkedIn: https://www.linkedin.com/in/rodrigo-brito-a4393a277/
---
⭐ Se este projeto foi útil, não esqueça de deixar uma estrela no repositório!
