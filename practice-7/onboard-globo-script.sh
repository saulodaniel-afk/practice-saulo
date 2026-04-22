#!/bin/bash



for file in $(find ~/Downloads -maxdepth 1 -type f -print0 | xargs -0 ls -1tr | head -10); do
    if [ -f "$file" ]; then
        echo "Arquivo: $(basename "$file")"
        read -p "Deseja (a)pagar, (m)over ou (p)ular? [a/m/p]: " acao

        case "$acao" in
            a|A)
                rm "$file"
                echo "Arquivo apagado."
                ;;
            m|M)
                read -p "Digite o destino (\$HOME/Downloads/mover recomendado): " destino
                mv "$file" "$destino"
                echo "Arquivo movido para $destino"
                ;;
            *)
                echo "Arquivo pulado."
                ;;
        esac
    fi
done

# comando aprendido: find ~/Downloads -maxdepth 1 -type f -print0 | xargs -0 ls -1tr | head -10
#find: Comando para buscar arquivos no sistema de arquivos.
#-maxdepth 1: Limita a busca ao diretório atual, sem entrar em subdiretórios.
#-type f: Especifica que queremos apenas arquivos (não diretórios).
#-print0: Imprime os resultados separados por um caractere nulo, útil para
#xargs: recebe saídas de outros comandos (via pipe |) e as converte em argumentos para um novo comando
#-0: Lê a entrada separada por nulos
#ls -1tr: Lista os arquivos em formato de uma linha, ordenados por data de modificação (mais antigos primeiro).
#-t: Ordena os arquivos por data de modificação (mais recentes primeiro).
#-r: Inverte a ordenação (mais antigos primeiro, já que -t sozinho seria mais recentes primeiro).
#head -10: Exibe apenas os 10 primeiros arquivos da lista resultante.       



