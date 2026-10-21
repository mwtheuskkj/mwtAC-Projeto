# mwtAC

Assistente de cliques em Java (Swing) para Minecraft 1.7.10 / 1.8.9, com tema japonês.
Projeto de apresentação — criado por **mwtheuskkj** (https://github.com/mwtheuskkj).

## Como executar
1. Tenha o **Java 11 ou superior** instalado (testado no Java 21).
2. Dê dois cliques em `mwtAC.jar` ou rode: `java -jar mwtAC.jar`

## Como usar
- Abertura animada (fade) -> tela para informar o nome da conta do Minecraft -> **ENTRAR**.
- A cabeça da skin vem do NameMC (com reserva em outros serviços de skin). Se o nome não for
  encontrado, aparece a cabeça de Steve ou Alex, aleatoriamente.
- **Início:** escolha o CPS (1 a 14) e o botão (esquerdo, direito ou dual), depois **ATIVAR**.
  O programa só clica enquanto você **segura** o botão do mouse.
  - **Atalho:** defina uma tecla (Esc cancela, Del remove) para ativar/desativar de qualquer lugar.
  - **Clique contínuo enquanto segura:** com o interruptor ligado, o CPS sofre *drops* durante o uso
    (ex.: 14 -> 12/10); desligado, a taxa fica constante.
  - **Teste de CPS:** segure o botão do mouse na área de teste (com o programa ativo) para ver os cliques por segundo.
- **Configurações:** tema escuro/claro (ícones de lua e sol), cor de destaque, modo arco-íris,
  segundo plano, **Liberar 20 CPS** (com aviso de risco de banimento), restaurar padrões e
  **Self-destruct** (encerra o programa por completo). Tudo é salvo em `~/.mwtac/config.properties`.
- **Sobre:** descrição, aviso de responsabilidade e perfil do criador com link do GitHub.
- Ao fechar a janela o programa continua na **bandeja do Windows** ("Mostrar ícones ocultos"):
  clique no ícone para **Abrir** ou **Encerrar**.
- Para usar sua foto na aba Sobre, salve-a como `~/.mwtac/creator.png`
  (senão o programa baixa o avatar público do GitHub).

## Aviso
- Os drops de CPS apenas variam a taxa; isso **não** garante que o uso passe despercebido em nenhum servidor.
- Muitos servidores proíbem autoclickers. Use no modo solo, em servidores próprios ou onde
  for permitido. Não nos responsabilizamos por punições na sua conta.

## Estrutura
```
mwtAC.jar          programa pronto (inclui a biblioteca JNativeHook)
src/mwtac/         código-fonte (.java)
  Main.java        ponto de entrada (instância única)
  core/            ClickEngine, Settings, SkinService, TrayService
  ui/              telas, abas, tema, animações e widgets
lib/               jnativehook-2.2.2.jar (monitora o mouse em segundo plano)
build.sh/.bat      recompilam e geram build/mwtAC.jar
```

## Bibliotecas
- JNativeHook 2.2.2 (GPLv3/LGPL) — leitura global do mouse.
