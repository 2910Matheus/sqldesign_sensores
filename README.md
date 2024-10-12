# FarmTech Solutions - Modelo de Banco de Dados para Agricultura Digital

## Grupo 8

## 👨‍🎓 Integrantes: 
- <a href="www.linkedin.com/in/matheus-maia-655bb1250">Matheus Augusto Rodrigues Maia</a>
- <a href="www.linkedin.com/in/johnatanloriano">Johnatan Sousa Macedo Loriano</a>
- <a href="https://www.linkedin.com/company/inova-fusca">Nome do integrante 3</a> 


## 👩‍🏫 Professores:
### Tutor(a) 
- <a href="www.linkedin.com/in/lucas-gomes-moreira-15a8452a">Lucas Gomes Moreira</a>


## 📜 Descrição

*Este projeto faz parte da iniciativa da FarmTech Solutions para desenvolver um sistema de banco de dados para uma fazenda inteligente. O sistema coleta dados em tempo real de sensores instalados na plantação, permitindo otimizar o uso de água e nutrientes, além de prever necessidades futuras com base em dados históricos.*


## 📁 Estrutura de pastas

Dentre os arquivos e pastas presentes na raiz do projeto, definem-se:

- <b>document</b>: aqui estão todos os documentos do projeto que as atividades poderão pedir. Na subpasta "other", adicione documentos complementares e menos importantes.

- <b>README.md</b>: arquivo que serve como guia e explicação geral sobre o projeto (o mesmo que você está lendo agora).

## 🔧 Estrutura do Banco de Dados

*### 1. Entidades e Atributos

#### Sensor
- `id_sensor`: INT (Chave Primária)
- `tipo_sensor`: VARCHAR
- `data_hora_leitura`: DATETIME
- `valor_leitura`: DOUBLE

#### Nutrientes NPK
- `id_nutrientes`: INT (Chave Primária)
- `data_hora_ajuste`: DATETIME
- `quantidade_fosforo`: DOUBLE
- `quantidade_potassio`: DOUBLE

#### pH do Solo
- `id_ph`: INT (Chave Primária)
- `data_hora_leitura_ph`: DATETIME
- `valor_ph`: DOUBLE

#### Plantação
- `id_plantacao`: INT (Chave Primária)
- `nome_cultura`: VARCHAR
- `area_plantio`: DOUBLE
- `localizacao`: VARCHAR

#### Irrigação
- `id_ajuste_irrigacao`: INT (Chave Primária)
- `data_hora_irrigacao`: DATETIME
- `quantidade_agua`: DOUBLE

#### Histórico de Ajustes
- `id_ajuste`: INT (Chave Primária)
- `data_ajuste`: DATETIME
- `tipo_ajuste`: VARCHAR
- `descricao_ajuste`: TEXT

#### Previsões Futuras
- `id_previsao`: INT (Chave Primária)
- `data_hora_previsao`: DATETIME
- `tipo_previsao`: VARCHAR (ex: água, nutrientes, pH)
- `valor_previsto`: DOUBLE

### 2. Relacionamentos

#### Sensor e Plantação
- Um sensor pode realizar várias leituras para uma única plantação (1:N).

#### Irrigação e Plantação
- A irrigação de uma plantação é ajustada conforme a necessidade de água (1:N).

#### Nutrientes NPK e Plantação
- A aplicação de nutrientes (fósforo e potássio) está relacionada a uma plantação específica (1:N).

#### pH do Solo e Plantação
- As leituras de pH do solo são associadas a uma plantação específica (1:N).

#### Histórico de Ajustes e Plantação
- O histórico de ajustes é registrado para cada plantação (1:N).

#### Previsões Futuras e Plantação
- Previsões de necessidades futuras são feitas para uma plantação (1:N).

### 3. Imagem do MER

![image](https://github.com/user-attachments/assets/a7ff8ab9-c10e-44cd-8b09-96d9b826d42c)


### 4. Imagem do DER

![image](https://github.com/user-attachments/assets/4d5c395d-bc51-44a8-a420-34186d4667de)


### 5. Considerações Finais

Este modelo de banco de dados foi projetado para otimizar o uso de recursos em uma fazenda digital, melhorando a eficiência através de dados históricos e previsões inteligentes de necessidades futuras.

## Tecnologias Utilizadas
- Oracle SQL Developer Data Model para modelagem do DER e MER.
- SQLDesigner para modelagem do DER. [Protótipo]
- BR Modelo WEB para modelagem do MER. [Protótipo]
- GitHub para versionamento.
---

## 🗃 Histórico de lançamentos
  
* 0.2.0 - 12/10/2024
     
* 0.1.0 - 09/10/2024
    

## 📋 Licença

<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/agodoi/template">MODELO GIT FIAP</a> por <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://fiap.com.br">Fiap</a> está licenciado sobre <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">Attribution 4.0 International</a>.</p>
