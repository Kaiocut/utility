#!/bin/bash
clear

# Função para exibir o banner inicial
function banner_utility() {
    # Usando o comando 'echo' com a opção '-e' para interpretar códigos de escape
    echo -e "\033[36m" # Define a cor do texto (ciano)
    cat << "EOF"
  _    _   _____   _   _       _   _____   _    _
 | |  | | |_   _| | | | |     | | |_   _| \ \  / /
 | |  | |   | |   | | | |     | |   | |    \ \/ /
 | |__| |   | |   | | | |___  | |   | |     |  |
 |______|   |_|   |_| |_____| |_|   |_|     |__|      ~ By @0rb1te 
                                                             v1.0
EOF
    echo -e "\033[0m" # Reseta a cor do texto para o padrão
}

# Exibe o banner do utilitário
banner_utility

# Função para exibir o banner do SPF SCANNER
banner_spf(){
    # Define a cor do texto (azul)
    echo -e "\033[34m"
    cat <<EOF
                            SPF SCANNER
 ------------------------------------------------------------------------
| Sem registro SPF = Vulnerável falsificação de e-mail (Mail Spoofing)   |
| v=spf1 include:example.com ?all = suscetível (Neutro)                  |
| v=spf1 include:example.com ~all = suscetível (*Tratado como suspeito*) |
| v=spf1 include:example.com -all = Não suscetível                       |
 ------------------------------------------------------------------------
EOF
    echo -e "\033[0m" # Reseta a cor do texto
}

# Função para verificar o SPF de um domínio
function spf_opt() {
    clear
    banner_utility
    banner_spf
    read -p "Insira o dominio (example.com): " dominio_alvo_spf
    clear
    banner_utility
    banner_spf
    echo -e "\033[32m" # Define a cor do texto (verde)
    # Comando 'host' para buscar o registro TXT do domínio (que contém o SPF)
    host -t txt $dominio_alvo_spf
    echo -e "\033[0m" # Reseta a cor do texto
}

# Função para realizar consulta WHOIS de um domínio
function whois_opt() {
    clear
    banner_utility
    read -p "Insira o dominio (example.com): " dominio_alvo_whois
    # Exibe as informações WHOIS do domínio, ignorando as linhas com '%'
    whois $dominio_alvo_whois | grep -v '^%'
}

# Função para verificar a existência do XMLRPC em um domínio
function xmlrpc_opt() {
    clear
    banner_utility
    read -p "Insira o dominio (https://example.com): " dominio_alvo_xmlrpc
    clear
    banner_utility
    # Faz uma requisição CURL para verificar o status da página xmlrpc.php
    status_code=$(curl -s -o /dev/null -w "%{http_code}" "$dominio_alvo_xmlrpc/xmlrpc.php?rsd")
    if [ "$status_code" -eq 200 ]; then
        echo "O dominio $dominio_alvo_xmlrpc POSSUI a página ativa!"
    else
        echo "O dominio $dominio_alvo_xmlrpc NÃO POSSUI a página ativa!"
    fi
}

# Exibe as opções disponíveis
cat <<EOF
1. SPF
2. WHOIS
3. XMLRPC
EOF

echo
# Solicita a seleção da opção ao usuário
read -p "Selecione uma opção: " option_select

# Verifica a opção escolhida e executa a função correspondente
if [ "$option_select" -eq 1 ]; then
    spf_opt
elif [ "$option_select" -eq 2 ]; then
    whois_opt
elif [ "$option_select" -eq 3 ]; then
    xmlrpc_opt
else
    echo -e "\033[31m" # Define a cor do texto (vermelho)
    echo "Não foi definido uma opção valida."
    echo -e "\033[0m" # Reseta a cor do texto
fi
