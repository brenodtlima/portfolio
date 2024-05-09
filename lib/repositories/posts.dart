import '../models/post_model.dart';

class Posts{
  static List<PostModel> posts_en = [
    PostModel(
      image_path: 'assets/images/registrobit_post3.png',
      title: 'Optical character recognition in water meters',
      text:
      "Motivated by a real problem, this project seeks to build a computer vision model to automate water consumption reading processes. The project consists of a model capable of identifying the digits present in photos of water meters, where in this project there was the collection and pre-processing of a real and original data set. To better understand the research field, there is also a systematic mapping of this area, which allowed me to understand and propose new solutions in my article. This project comes from the completion of my bootcamp.",
      link: 'https://github.com/BrenoSLima/bootcamp/blob/main/en/28_bootcamp_final_task.pdf',
      tools: [
        'Computer vision',
        'OCR',
        'YOLO',
        'Systematic mapping',
      ],
      side: 'l',
    ),
    PostModel(
      image_path: 'assets/images/ids_post.png',
      title: 'Intrusion Detection System',
      text:
      "Would you know how to protect yourself if a DDoS attack was directed at you or your company? This is a problem that large corporations suffer from on a daily basis, so how do they prevent these attacks? In a scientific research, i used the data of different attacks provided by the University of New Brunswick as the basis of my studies to better understand how to create an IDS (Intrusion Detection System) using machine learning concepts and documented the process in a google collab.",
      link:
      "https://github.com/BrenoSLima/instrusion-detection-system/blob/main/en/ids.ipynb",
      tools: [
        'Curse of Dimensionality',
        'Data Manipulation',
        'Data Scaling',
        'Imbalanced Data',
        'RandomUnderSampler',
        'Pandas',
        'Numpy',
        'ScikitLearn',
        'Matplotlib',
        'StandardScaler',
        'PCA and Random Forest',
        'Random Grid Search',
        'KNN',
        'SVC',
        'Decision Tree',
        'Random Forest',
        'MLP',
        'f-measure',
        'Cross Validation',
        'Box Plot',
        'Confusion Matrix',
        'ROC Curve'
      ],
      side: 'r',
    ),
    PostModel(
      image_path: 'assets/images/matplotlib_post.png',
      title: 'Matplotlib tutorial',
      text:
      "Have you ever stopped to think about how we humans understand something better when we can visualize what we're working with? New ideas and concepts can arise from this possibility. This is the purpose of matplotlib, a python library to help us observe data. With that in mind, throughout my studies I decided to produce a tutorial covering, in an introductory way, the concepts and tools of the library to help possible other students at my college who are faced with the same goal.",
      link:
      "https://github.com/BrenoSLima/exploring-matplotlib/blob/main/en/exploring_matplotlib.ipynb",
      tools: [
        'Anatomy of a Figure',
        'Figure',
        'Axes',
        'Axis',
        'Subplots',
        'Parameters',
        'Methods',
        'Illustrative images',
        'Bar Plot',
        'Scatter Plot',
        'Line Plot',
        'Pie Chart',
        'Heatmap',
        'Histrogram',
        'Legends',
        'Markers',
        'Annotating (Text, Arrow and Annotate)'
      ],
      side: 'l',
    ),
    PostModel(
      image_path: 'assets/images/genetic_algorithm.png',
      title: 'Traveler Salesman Problem',
      text:
      "Inspired by the ideas of Darwin, a genetic algorithm is an alternative when the goal is optimize tasks with a very large number of possibilities, which is the case of the traveler salesman problem, a person with the job to minimize the cost traveling around cities. This project was first started in my freshman year, when I did it using the C language. I have been updating the project since then and today it is structured in python.",
      link: "https://github.com/BrenoSLima/genetic-algorithm/blob/main/en/tsp_ga.ipynb",
      tools: ['Python', 'Numpy', 'Matplotlib'],
      side: 'r',
    ),
  ];

  static List<PostModel> posts_pt = [
    PostModel(
      image_path: 'assets/images/registrobit_post3.png',
      title: 'Reconhecimento ótico de caracteres em hidrômetros',
      text:
      "Motivado por um problema real, este projeto busca construir um modelo de visão computacional para automatizar processos de leitura de consumo de água. O projeto consiste em um modelo capaz de identificar os dígitos presentes em fotos de hidrômetros, onde neste projeto houve a coleta e pré-processamento de um conjunto de dados real e original. Para entender melhor o campo de pesquisa, há também um mapeamento sistemático desta área, que me permitiu entender e propor novas soluções em meu artigo. Esse projeto vem de conclusão do meu bootcamp.",
      link: 'https://github.com/BrenoSLima/bootcamp/blob/main/pt/28_tabalho_final_do_bootcamp.pdf',
      tools: [
        'Visão computacional',
        'OCR',
        'YOLO',
        'Mapeamento sistemàtico',
      ],
      side: 'l',
    ),
    PostModel(
      image_path: 'assets/images/ids_post.png',
      title: 'Sistema de Detecção de Intrusão',
      text:
      "Você saberia se proteger se um ataque de DDoS fosse direcionado a você ou à sua empresa? Este é um problema com o qual grandes corporações sofrem diariamente, então como elas previnem esses ataques? Em uma pesquisa científica, utilizei dados de diferentes ataques fornecidos pela Universidade de New Brunswick como base para meus estudos para entender melhor como criar um IDS (Sistema de Detecção de Intrusão) usando conceitos de aprendizado de máquina e documentei o processo em um google collab.",
      link:
      "https://github.com/BrenoSLima/instrusion-detection-system/blob/main/pt/ids.ipynb",
      tools: [
        'Maldição da Dimensionalidade',
        'Manipulação de Dados',
        'Escala de Dados',
        'Dados Desbalanceados',
        'RandomUnderSampler',
        'Pandas',
        'Numpy',
        'ScikitLearn',
        'Matplotlib',
        'StandardScaler',
        'PCA e Random Forest',
        'Random Grid Search',
        'KNN',
        'SVC',
        'Árvore de Decisão',
        'Random Forest',
        'MLP',
        'Medida F',
        'Validação Cruzada',
        'Box Plot',
        'Matriz de Confusão',
        'Curva ROC'
      ],
      side: 'r',
    ),
    PostModel(
      image_path: 'assets/images/matplotlib_post.png',
      title: 'Tutorial do Matplotlib',
      text:
      "Você já parou para pensar em como nós humanos entendemos algo melhor quando podemos visualizar com o que estamos trabalhando? Novas ideias e conceitos podem surgir dessa possibilidade. Este é o propósito do matplotlib, uma biblioteca python para nos ajudar a observar dados. Com isso em mente, ao longo dos meus estudos, decidi produzir um tutorial cobrindo, de forma introdutória, os conceitos e ferramentas da biblioteca para ajudar possíveis outros estudantes da minha faculdade que se deparam com o mesmo objetivo.",
      link:
      "https://github.com/BrenoSLima/exploring-matplotlib/blob/main/pt/explorando_a_matplotlib.ipynb",
      tools: [
        'Anatomia de uma Figura',
        'Figura',
        'Eixos',
        'Eixo',
        'Subplots',
        'Parâmetros',
        'Métodos',
        'Imagens Ilustrativas',
        'Gráfico de Barras',
        'Gráfico de Dispersão',
        'Gráfico de Linha',
        'Gráfico de Pizza',
        'Mapa de Calor',
        'Histograma',
        'Legendas',
        'Marcadores',
        'Anotação (Texto, Setas e Anotar)'
      ],
      side: 'l',
    ),
    PostModel(
      image_path: 'assets/images/genetic_algorithm.png',
      title: 'Problema do Caixeiro Viajante',
      text:
      "Inspirado nas ideias de Darwin, um algoritmo genético é uma alternativa com o objetivo de otimizar tarefas com um número muito grande de possibilidades, como é o caso do problema do caixeiro viajante, pessoa que tem como função minimizar o custo de viajar pelas cidades. Este projeto foi iniciado no meu primeiro ano de faculdade, quando o fiz usando a linguagem C. Venho atualizando o projeto desde então e hoje ele está estruturado em python.",
      link: "https://github.com/BrenoSLima/genetic-algorithm/blob/main/pt/tsp_ga.ipynb",
      tools: ['Python', 'Numpy', 'Matplotlib'],
      side: 'r',
    ),
  ];
}