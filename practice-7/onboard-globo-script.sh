#!/bin/bash

for file in ~/Downloads/*; do
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

