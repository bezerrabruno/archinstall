# Beta Archlinux

Este repositório contém um guia completo para a instalação personalizada do Arch Linux, adaptado de acordo com as minhas preferências e otimizações. O objetivo é fornecer um passo a passo detalhado que facilita o processo de instalação, garantindo um sistema leve, rápido e altamente configurável.

## Conteúdo do Repositório

- **README.md**: Documento principal com instruções detalhadas para a instalação.
- **PACKAGES.md**: Lista de pacotes recomendados para instalação.
- **scripts/**: Scripts úteis para automatizar etapas da instalação.
- **configs/**: Arquivos de configuração padronizados para sistemas e softwares que utilizo.

## Instruções de Instalação

1. **Preparação do Suporte de Instalação**
   - Baixe a imagem ISO mais recente do Arch Linux [aqui](https://archlinux.org/download/).
   - Crie o pendrive bootável utilizando o software de sua preferencia
   - Minha preferencia: [Ventoy](https://www.ventoy.net/en/index.html).

2. **Boot e Conexão à Internet**
   - Inicie o computador a partir do pendrive.
   - Valide a internet com `ping -c 4 google.com`
        - Em caso de erro use `systemctl restart systemd-networkd`.
        - Para wifi, use o `NetworkManager`.
           - primeiro `nmcli device wifi list`.
           - depois `nmcli device wifi connect SSID password PASS hidden yes`.
     
3. **Particionamento do Disco**
   - Use `fat32` para **'/boot'** e `ext4` para **'/'**.

4. **Atualização do Base System**
   - Utilize o comando `pacman -Sy archlinux-keyring` para assinar o disco.
   - Utilize o comando `pacman -Sy archinstall` para atualizar script de instalação.
   - Utilize o comando `pacman -Syy` para atualizar qual quer coisa restante.
  
5. **Instalação do Base System**
   - Utilize o comando `archinstall` para iniciar o script e instalar o sistema base e os pacotes essenciais.
   - Siga o script de forma clara.
  
6. **Instalação do shell**
   - Utilize o comando `su` para entrar como root.
   - Utilize o comando `pacman -S zsh` para instalar o zsh.
   - Utilize o comando `which zsh` para validar o zsh.
   - Utilize o comando `chsh -s $(which zsh)` para adicionar o zsh como padrão do sistema.
   - Utilize o comando `exit` para sair do root
   - Utilize o comando `chsh -s $(which zsh)` para adicionar o zsh como padrão do usuário.
   - Reinicie o sistema.

7. **Instalação de Pacotes Básicos**
   - Utilize o comando `su` para entrar como root.
   - Utilize o comando `pacman -S git wget nano` para instalar git, o wget e o nano.
        - Para, acessar o git, baixar coisas web e editar arquivos, respectivamente.
   - Utilize o comando `nano /etc/sudoers` para alterar a permissão wheel(o usuario).
   - Utilize o comando `sudo reboot` para reiniciar o sistema.

8. **Atualização do sistema**
   - Utilize o comando `sudo pacman -Syy` para  atualizar algumas possíveis versões.
   - Utilize o comando `sudo pacman -Syu` para  atualizar algumas possíveis versões.

9. **Sincronização com o repositorio atual**
   - Utilize o comando `git clone git@github.com:bezerrabruno/beta_archlinux.git` para sincronizar com esse git.
     
10. **Instalação de Pacotes Personalizados**
   - Siga os scripts em `scripts/` que julgar necessarios.
   - Siga as orientações em `packages.txt` para instalar os pacotes que utilizo frequentemente.

11. **Configuração de Ambiente**
   - Copie e ajuste os arquivos de configuração encontrados na pasta `configs/` para seu usuario `.config`.

12. **Scripts de Pós-Instalação**
    - Execute scripts na pasta `post-install/` para concluir a configuração do seu sistema.

13. **Reboot**
    - Reinicie o sistema.
