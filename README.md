# UTILITY

Security Utility Script
Um utilitário em Shell Script para realizar verificações de segurança em domínios, incluindo registros SPF, informações WHOIS e presença de XML-RPC. Esse script exibe um banner de boas-vindas, oferecendo um menu com várias funcionalidades de verificação para auxiliar profissionais de segurança da informação.

Funcionalidades
Verificação de SPF: Realiza uma consulta DNS para verificar o registro SPF do domínio, identificando se ele é vulnerável à falsificação de e-mail (Mail Spoofing).
Consulta WHOIS: Exibe informações WHOIS sobre o domínio fornecido.
Verificação de XML-RPC: Usa o curl para verificar se a página xmlrpc.php do domínio está ativa, o que pode indicar vulnerabilidades em sites WordPress.
Pré-requisitos
Certifique-se de que os seguintes comandos estão instalados no seu sistema:

host: Usado para verificar registros SPF.
whois: Necessário para consulta WHOIS.
curl: Utilizado para verificar o status da página XML-RPC.
Instalação
Clone o repositório:
bash
Copiar código
git clone https://github.com/seu-usuario/security-utility-script.git
Dê permissão de execução ao script:
bash
Copiar código
chmod +x security-utility-script.sh
Uso
Execute o script diretamente pelo terminal:

bash
Copiar código
./security-utility-script.sh
O script exibirá um menu com as opções:
markdown
Copiar código
1. SPF
2. WHOIS
3. XMLRPC
Digite o número correspondente à opção desejada e pressione Enter.
Insira o domínio conforme solicitado, e o script exibirá os resultados da verificação.
Exemplo de Saída
Para verificar o registro SPF:

bash
Copiar código
./security-utility-script.sh
plaintext
Copiar código
Insira o dominio (example.com): example.com
example.com text "v=spf1 include:_spf.google.com ~all"
Estrutura do Código
banner_utility: Exibe um banner inicial.
banner_spf: Exibe informações sobre os resultados da verificação de SPF.
spf_opt: Função para verificar registros SPF de um domínio.
whois_opt: Função para consulta WHOIS de um domínio.
xmlrpc_opt: Função para verificar a presença da página XML-RPC (xmlrpc.php).
Contribuição
Faça um fork do projeto.
Crie uma branch para sua feature (git checkout -b feature/NovaFeature).
Commit suas alterações (git commit -m 'Adiciona NovaFeature').
Envie para a branch principal (git push origin feature/NovaFeature).
Abra um Pull Request.
Licença
Este projeto está licenciado sob a licença MIT - veja o arquivo LICENSE para mais detalhes.

Contato
Criado por Seu Nome - Sinta-se à vontade para entrar em contato.


