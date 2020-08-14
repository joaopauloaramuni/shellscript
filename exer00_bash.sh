#!/bin/bash

# Antes de começarmos, vamos entender o comentário #!/bin/bash que ficará no topo de todos os nossos scripts

# Este comentário é chamado de "shebang" #!

# Ele indica qual interpretador de comandos utilizar ao executar o script

# Nós queremos que nosso script seja interpretado e executado pelo shell bash, por isso: #!/bin/bash

# Outras opções seriam:

#!/bin/sh — Executar o arquivo usando sh, o Bourne shell, ou um shell compatível
#!/bin/csh — Executar o arquivo usando csh, o C shell, ou um shell compatível
#!/usr/bin/perl -T — Executar o arquivo usando Perl e option for taint checks
#!/usr/bin/php — Executar o arquivo usando o interpretador de linha de comando do PHP
#!/usr/bin/python -O — Executar o arquivo usando Python com otimizações no código
#!/usr/bin/ruby — Executar o arquivo usando Ruby

# Na maioria das distribuições, o /bin/sh é somente um link para /bin/bash. 
# O bash é baseado no sh (shell padrão no Unix), por isso faz tudo que este faz, e muito mais.

# Tudo que funciona em sh funciona no bash.
# Mas nem tudo que funciona em bash é aceito no sh.
# Por esse motivo, vamos utilizar sempre o /bin/bash

# Execute o script ou digite o comando abaixo e veja você mesmo...
echo $SHELL