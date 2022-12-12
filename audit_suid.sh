# PT: Esse script irá realizar a contagem de quantos arquivos da permissão SUID tem no servidor.
# EN: This script will count how many files have SUID permission on server.

#!/bin/bash

find / -type f -perm /4000 2>/dev/null | wc -l > audit_suid.out

# PT: Caso precise jogar o resultado da pesquisa, precisará criar um arquivo .out. Caso não, apenas retire o "> audit_suid.out".
# EN: If you need to take the search result, you'll need to create a output file. If you don't need it, just remove "> audit_suid.out"
