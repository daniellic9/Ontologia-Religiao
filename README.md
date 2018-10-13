# Ontologia-Religiao
Modelo conceitual, utilizando ontologia de Fundamentação UFO, sobre religiões. Modelo criado e validado no editor de ontoUML, menthor.

# Relato de Experiência
Esse trabalho propõe a criação de um modelo conceitual baseado em ontologia para o contexto de religião. Foram usados conhecimentos adquiridos em sala de aula, o editor menthor para criação do modelo, através da linguagem ontoUML. As informações do domínio foram encontradas na internet, nos sites descritos no dicionário de dados e um pouco de conhecimento prévio. 

Esse modelo apresenta os conceitos: uma religião é um conjunto de crenças que possui líderes religiosos que conduzem práticas religiosas, com doutrina de um livro sagrado; o Ateísmo e o Agnosticismo são conjuntos de crenças; uma religião pode ser teísta ou não teísta; religiões
teístas podem ser politeístas, henoteístas e monoteístas; religiões não teístas são budismo, xintoísmo e taoísmo; religiões monoteístas são cristianismo, judaísmo e islamismo.

Quando o trabalho foi idealizado esperava que a ontologia abrangesse a estrutura das religiões e também características das religiões escolhidas, mas conforme a parte de religião foi sendo criada percebi que o nível de detalhamento que gostaria só seria possível se fosse feita uma ontologia para cada religião em específico. As religiões que usei nesse trabalho são: Cristianismo, Judaísmo, Islamismo, Taoísmo, Budismo e Xintoísmo.

A princípio tinha decidido adotar como definição de religião um conjunto de crenças que possui um livro sagrado. Então logo decidi adotar religião como collective, mas ao discutir em sala percebi que se a condição de existência de uma religião for possuir livro sagrado então deveria ser um role. Como ainda estava decidida a manter a definição de conjunto de crenças, foi nesse momento que decidi criar a entidade conjunto de crenças que seria o collective na qual religião é um role.

Resolvendo, assim, outro problema, que era o problema de ateísmo e agnosticismo. De acordo com a definição escolhida essas entidades não eram religiões. Antes de decidir o collective de conjunto de crenças não havia lugar para essas entidades no modelo, mas agora elas foram
estereotipadas com subkind do collective conjunto de crenças, já que herdam o princípio de identidade e não possuem dependência e serem rígidos.

A parte de classificações de religiões foi de forma mais taxonômica, como religião é um role todas suas especificações só poderiam ser role também. Decidi criar as entidades pessoa e líder religioso, que claramente é um role por ser um papel representado por uma pessoa. Quando
tentei fazer a validação das regras de ontoUML me deparei com os conceitos de que role deve ser ligado através de mediation a um relator, foi assim que surgiu a entidade prática religiosa que foi derivada do relacionamento de religião com o livro religioso e o líder religioso.

Depois de passadas as dificuldades em definição dos conceitos e adequação às regras de ontoUML, começaram os problemas com o editor. Algumas vezes ele simplesmente decidia para de validar e uma dessas vezes decidi reiniciar o computador, mas depois disso o programa não abria mais meu arquivo, a única solução que achei foi fazer tudo do zero. Ao conversar com os colegas de sala percebi que era um dos problemas ocorrentes, decidi então em vez de modificar e salvar no mesmo arquivo trabalhar com versões de arquivos, para caso isso se repetisse eu
teria pelo meno algo feito no arquivo anterior.

No começo achei o editor muito bom, simples e completo, mas com o uso foram surgindo alguns problemas que eu não sabia se era do meu computador, ou no editor. Às vezes na validação acusava erros em entidades e relacionamentos que não existiam mais, alguns problemas simples
de disposição no diagrama e de relacionamentos que continuavam aparecendo mesmo depois de excluídos. Comparado a outros editores que usei de UML ele é muito bom, os problemas que eu tive não são tão grandes como os editores não intuitivos que já usei.

Sobre as maiores dificuldades, que ainda não mencionei foram compreensão do domínio, e decisão de definições. Por ser um domínio abstrato muitas definições não tem apenas uma fonte que seja principal e confiável, e muitos assuntos são tratados de forma diferenciada em lugares
diferentes podendo ser contraditórias para criação do modelo. Outras dificuldades que podem ser pontuadas foram nos conceitos de relações em ontologia, e conhecimento que foi adquirido gradualmente então algumas vezes me deparei com dificuldades que foram explicadas em sala
logo depois.

# Modelo
![ModeloRel](https://raw.githubusercontent.com/daniellic9/Ontologia-Religiao/master/fim.png)
