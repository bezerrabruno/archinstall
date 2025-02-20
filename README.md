# Archinstall

Este repositório contém um guia completo para a instalação personalizada do Arch Linux, adaptado de acordo com as minhas preferências e otimizações. O objetivo é fornecer um passo a passo detalhado que facilita o processo de instalação, garantindo um sistema leve, rápido e altamente configurável.

## Conteúdo do Repositório

- **README.md**: Documento principal com instruções detalhadas para a instalação.
- **scripts/**: Scripts úteis para automatizar etapas da instalação.
- **configs/**: Arquivos de configuração padronizados para sistemas e softwares que utilizo.
- **packages.txt**: Lista de pacotes recomendados para instalação.
- **post-install/**: Instruções e recomendações para a configuração do sistema após a instalação inicial.

## Instruções de Instalação

1. **Preparação do Suporte de Instalação**
   - Baixe a imagem ISO mais recente do Arch Linux [aqui](https://archlinux.org/download/).
   - Crie o pendrive bootável utilizando o software `Ventoy`.

2. **Boot e Conexão à Internet**
   - Inicie o computador a partir do pendrive.
   - Conecte-se à internet, seja via cabo ou usando `iwctl` para Wi-Fi (preferencialmente cabo).

3. **Particionamento do Disco**
   - Use `fat32` para **'/boot'** e `ext4` para **'/'**.

4. **Atualização do Base System**
   - Utilize o comando `pacman -Sy archlinux-keyring` para assinar o disco.
   - Utilize o comando `pacman -Sy archinstall` para atualizar script de instalação.
   - Utilize o comando `pacman -Syy` para atualizar qual quer coisa restante.
  
5. **Instalação do Base System**
   - Utilize o comando `archinstall` para iniciar o script e instalar o sistema base e os pacotes essenciais.

6. **Configurações Iniciais**
   - Siga o script de forma clara.

7. **Instalação de Pacotes Personalizados**
   - Siga os scripts em `scripts/` que julgar necessarios.
   - Siga as orientações em `packages.txt` para instalar os pacotes que utilizo frequentemente.

8. **Configuração de Ambiente**
   - Copie e ajuste os arquivos de configuração encontrados na pasta `configs/` para seu usuario `.config`.

9. **Scripts de Pós-Instalação**
    - Execute scripts na pasta `post-install/` para concluir a configuração do seu sistema.

11. **Reboot**
    - Reinicie o sistema.
