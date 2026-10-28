# Homebrew Tap — Banana

Tap oficial do **[Banana](https://github.com/andre28abr/banana-releases)** — um gerenciador de notas desktop local-first, WYSIWYG de Markdown, com editor de código, PDF viewer, e criptografia AES-256-GCM.

## Instalar

```bash
brew tap andre28abr/banana
brew trust andre28abr/banana   # obrigatório desde Homebrew 4.x
brew install --cask banana
```

> **Por que `brew trust`?** Desde Homebrew 4.x, taps de terceiros exigem
> confirmação explícita. É a mudança de segurança pós-incidente do npm
> supply-chain. Aparece uma vez só por tap.

Depois abre pelo Spotlight ou:

```bash
open -a Banana
```

## Atualizar

```bash
brew upgrade --cask banana
```

Ou tudo de uma vez:

```bash
brew upgrade
```

## Desinstalar

```bash
brew uninstall --cask banana

# Se quiser remover também prefs, cache, WebKit data (`zap`):
brew uninstall --cask --zap banana
```

## Requisitos

- **macOS Ventura (13)** ou superior
- **Apple Silicon (M1/M2/M3/M4)** — build Intel ainda não disponível

Se você tem Intel Mac, baixe manualmente o `.dmg` do [release](https://github.com/andre28abr/banana-releases/releases/latest) quando tiver — ou compile a partir do fonte (código fonte ainda privado por enquanto).

## Aviso de assinatura

O Banana ainda não é code-signed pela Apple ($99/ano de Developer ID). Na primeira execução, macOS pode reclamar:

```bash
# Se o Finder bloquear:
xattr -d com.apple.quarantine /Applications/Banana.app
```

Ou clique direito no ícone → **Abrir** → confirma uma vez. Homebrew Cask normalmente já limpa a quarantine flag automaticamente, mas se acontecer, é isso.

## Suporte

Bugs, sugestões, features: [andre28abr/banana-releases/issues](https://github.com/andre28abr/banana-releases/issues) (código fonte ainda em repo privado; issues no repo público de releases).

## Contribuições

Obrigado pelo interesse! Este é um projeto pessoal, mantido por uma pessoa só, e por isso não consigo revisar nem acompanhar contribuições de fora. Pedidos de alteração (pull requests) serão fechados sem análise, sem nenhuma desconsideração por quem enviou. Se quiser adaptar o projeto às suas necessidades, fique à vontade para fazer um fork, dentro dos termos da licença.

## Licença

App é **MIT** (ver `LICENSE` em cada release). Formula deste tap: mesma licença.
