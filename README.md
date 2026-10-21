# mwtAC

Assistente de cliques em **Java (Swing)** para Minecraft 1.7.10 / 1.8.9, com interface de tema japonês.
Projeto de apresentação da faculdade, criado por [**mwtheuskkj**](https://github.com/mwtheuskkj).

> ⚠️ **Aviso:** muitos servidores proíbem autoclickers e podem banir a conta. Use no modo solo, em servidores próprios ou onde for permitido. O mwtAC não se responsabiliza por punições.

---

## ✨ Funcionalidades

### Início
- **CPS de 1 a 14**, com botão esquerdo, direito ou dual.
- **Drops de CPS:** durante o uso, a taxa cai de tempos em tempos (ex.: 14 → 12/10) e volta ao normal.
- **Clique contínuo enquanto segura:** interruptor que liga/desliga os drops. Desligado, a taxa fica constante.
- **Toggle Key:** defina uma tecla para ativar/desativar o programa de qualquer janela, sem precisar abri-lo.
  Clique em *DEFINIR TECLA* e aperte a tecla desejada (`Esc` cancela, `Del` remove).
- **Teste de CPS:** segure o botão do mouse na área de teste, com o programa ativo, para ver o CPS atual, o máximo, o total de cliques e um gráfico dos últimos 10 segundos.

### Configurações
- Tema escuro/claro, cor de destaque (cores prontas ou seletor próprio) e modo arco-íris.
- **Liberar 20 CPS:** aumenta o limite de 14 para 20, com um pop-up avisando do risco de banimento.
- Continuar em segundo plano (bandeja do sistema).
- Restaurar padrões.
- **Self-destruct:** encerra o programa por completo, sem deixar nada em segundo plano nem na bandeja.
- Pop-ups no tema do programa, com animação de fade-in/fade-out.

### Sobre
- Descrição, aviso de responsabilidade e perfil do criador.

As preferências ficam salvas em `~/.mwtac/config.properties`.

---

## 🚀 Como executar

1. Instale o **Java 11 ou superior** (testado no Java 21).
2. Baixe o `mwtAC.jar` e dê dois cliques, ou rode:

```bash
java -jar mwtAC.jar
```

Ao abrir: animação de abertura → informe o nome da conta do Minecraft → **ENTRAR**.
A cabeça da skin vem do NameMC (com reserva em outros serviços). Se o nome não for encontrado, aparece Steve ou Alex.

Ao fechar a janela, o programa continua na **bandeja do Windows** ("Mostrar ícones ocultos"). Para encerrar de vez, use *Encerrar* no ícone da bandeja ou o **Self-destruct** nas Configurações.

---

## 🔨 Como compilar

Requer **JDK 11+**. Na raiz do projeto:

```bash
# Linux / macOS
./build.sh

# Windows
build.bat
```

O jar final é gerado em `build/mwtAC.jar`, já com o JNativeHook embutido.

---

## 📁 Estrutura

```
mwtAC.jar          programa pronto (inclui a biblioteca JNativeHook)
src/mwtac/         código-fonte (.java)
  Main.java        ponto de entrada (instância única)
  core/            ClickEngine, Settings, SkinService, TrayService
  ui/              telas, abas, tema, pop-ups, animações e widgets
lib/               jnativehook-2.2.2.jar (monitora mouse e teclado globalmente)
build.sh / .bat    recompilam e geram build/mwtAC.jar
```

---

## 📚 Bibliotecas

- [JNativeHook 2.2.2](https://github.com/kwhat/jnativehook) (GPLv3/LGPL): leitura global do mouse e do teclado.

---

## 👤 Autor

Criado por **mwtheuskkj** — [github.com/mwtheuskkj](https://github.com/mwtheuskkj)
