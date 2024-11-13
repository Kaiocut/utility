<h1 align="center">UTILITY</h1>
<h4 align="center">Descrição</h4>
O Utility é um utilitário em Shell Script para realizar verificações de segurança em domínios, incluindo registros SPF, informações WHOIS e presença de XML-RPC. Oferecendo um menu com várias funcionalidades de verificação para auxiliar profissionais de segurança da informação.

# Funcionalidades

- **Verificação de SPF:** Realiza uma consulta DNS para verificar o registro SPF do domínio, identificando se ele é vulnerável à falsificação de e-mail (Mail Spoofing).
- **Consulta WHOIS:** Exibe informações WHOIS sobre o domínio fornecido.
- **Verificação de XML-RPC:** Usa o curl para verificar se a página xmlrpc.php do domínio está ativa, o que pode indicar vulnerabilidades em sites WordPress.

# Pré-requisitos

- **Host:** Usado para verificar registros SPF.
- **Whois:** Necessário para consulta WHOIS.
- **Curl:** Utilizado para verificar o status da página XML-RPC.

# Instalação
```sh
git clone https://github.com/Kaiocut/utility.git
```

Dê permissão de execução ao script:
bash
Copiar código
chmod +x security-utility-script.sh
Uso
Execute o script diretamente pelo terminal

Licença
Este projeto está licenciado sob a licença MIT - veja o arquivo LICENSE para mais detalhes.
