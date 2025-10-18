# 🧪 Projeto WineChem

## 🎯 Objetivo

> Este projeto tem como objetivo aplicar **técnicas de mineração de regras de associação** para identificar **padrões ocultos entre os componentes químicos presentes em diferentes tipos de vinhos**.

O projeto demonstra o uso prático de **técnicas de aprendizado não supervisionado** aplicadas à **análise exploratória de dados químicos**, sendo uma abordagem útil tanto para **análises laboratoriais** quanto para **estudos de qualidade e classificação de vinhos**.

📊 **Fonte dos dados:** [Wine Dataset for Clustering (Kaggle)](https://www.kaggle.com/datasets/harrywang/wine-dataset-for-clustering)

---

## 🧰 Bibliotecas Utilizadas

```python
# Análise e manipulação de dados
import pandas as pd
import numpy as np

# Visualização de dados
import plotly.express as px
import seaborn as sns
import matplotlib.pyplot as plt
import plotly.graph_objects as go
import scipy.stats as sts

# Pré-processamento
from sklearn.compose import ColumnTransformer
from sklearn import preprocessing
from sklearn.pipeline import Pipeline
from statistics import mode
from sklearn.preprocessing import StandardScaler
from sklearn.decomposition import PCA

# Algoritmos de agrupamento
from sklearn.cluster import KMeans, MeanShift, AgglomerativeClustering, DBSCAN
from scipy.cluster.hierarchy import dendrogram, linkage

# Outras abordagens
from kmodes.kprototypes import KPrototypes
from kmodes.kmodes import KModes
```

---

## 🧬 Etapas do Projeto

### 1️⃣ Importação do Dataset
```python
vinhos = pd.read_csv('wine-clustering.csv', sep=',', encoding='utf-8')
vinhos.head()
```

### 2️⃣ Análise Exploratória
- Verificação de valores nulos e tipos de dados  
- Estatísticas descritivas das variáveis químicas  
- Distribuições, histogramas e boxplots para análise de simetria e outliers  

### 3️⃣ Pré-processamento
- Padronização das variáveis com **StandardScaler**  
- Redução de dimensionalidade com **PCA** para análise visual e ganho de performance  

### 4️⃣ Agrupamento
Foram aplicados diferentes algoritmos de **aprendizado não supervisionado**:
- **K-Means**  
- **MeanShift**  
- **Agglomerative Clustering**  
- **DBSCAN**  
- **KModes / KPrototypes**  

Os modelos foram avaliados visualmente e com base na separabilidade dos clusters gerados.

### 5️⃣ Visualização dos Resultados
Gráficos em 2D e 3D foram utilizados para visualizar os agrupamentos após a aplicação do PCA, mostrando a separação dos tipos de vinho de acordo com suas características químicas.

---

## 📈 Resultados

O projeto permitiu:
- **Identificar padrões** entre os componentes químicos dos vinhos;  
- **Agrupar vinhos** de forma coerente com suas propriedades físico-químicas;  
- **Demonstrar o uso prático** de algoritmos de clustering e redução de dimensionalidade em um contexto real.  

---

## 🧠 Tecnologias Envolvidas
- **Python 3.x**  
- **Scikit-learn**  
- **Pandas / NumPy**  
- **Matplotlib / Seaborn / Plotly**  
- **SciPy**  
- **KModes**

---

## 📂 Estrutura do Projeto
```
Agrupamento_Vinhos/
│
├── Agrupamento_Vinho.ipynb   # Notebook principal do projeto
├── wine-clustering.csv       # Base de dados original
├── README.md                 # Documentação do projeto
└── requirements.txt          # Dependências (opcional)
```

---

## 🚀 Como Executar o Projeto

1. **Clone o repositório**
   ```bash
   git clone https://github.com/Rd-Brito13/Projeto-WineChem.git
   ```
2. **Acesse o diretório**
   ```bash
   cd Projeto-WineChem
   ```
3. **Instale as dependências**
   ```bash
   pip install -r requirements.txt
   ```
4. **Abra o notebook**
   ```bash
   jupyter notebook Agrupamento_Vinho.ipynb
   ```

---

## 👨‍💻 Autor

**Rodrigo Brito**  
📧 [rd.brito13@gmail.com](mailto:rd.brito13@gmail.com)  
💼 [LinkedIn](https://www.linkedin.com/in/rd-brito13)

---

⭐ **Se este projeto foi útil, não esqueça de deixar uma estrela no repositório!**
