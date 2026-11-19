# jhonnestoledo.com.br

Site pessoal e portfólio de Ciência de Dados de **Jhonnes Toledo**, feito com [Quarto](https://quarto.org) e publicado no GitHub Pages.

## Estrutura

| Caminho | Conteúdo |
|---|---|
| `index.qmd`, `sobre.qmd`, `projetos.qmd`, `curriculo.qmd`, `contato.qmd` | Páginas em português |
| `projetos/<nome>/index.qmd` | Uma página por projeto (português) |
| `en/` | Versão em inglês (mesma estrutura) |
| `styles/github-dark.scss` | Tema visual (cores inspiradas no GitHub Dark) |
| `images/` | Foto, favicon e imagens |
| `files/` | Currículos em PDF |
| `_quarto.yml` | Configuração comum; `_quarto-pt.yml` e `_quarto-en.yml` têm menus e textos de cada língua |

## Visualizar no computador

```bash
quarto preview                 # versão em português
quarto preview --profile en    # versão em inglês
```

Para gerar o site completo, como o GitHub publica: `.\build.ps1` (Windows).

## Publicação

Cada `push` na branch `main` dispara o workflow `.github/workflows/publish.yml`, que renderiza as duas línguas e publica no GitHub Pages.

## Adicionar um projeto

1. Copie uma pasta de `projetos/` (e a equivalente em `en/projects/`) com um novo nome.
2. Edite título, descrição, categorias, `order` e o texto.
3. Também é possível usar um notebook: salve `index.ipynb` na pasta, com o cabeçalho YAML na primeira célula (tipo *Raw*).

## Pendências de conteúdo

- [ ] Currículo com o e-mail `contato@jhonnestoledo.com.br`
- [ ] Currículo em inglês: salve `files/resume-jhonnes-toledo.pdf` e atualize `en/resume.qmd`
- [ ] Para atualizar o currículo, substitua `files/curriculo-jhonnes-toledo.pdf` mantendo o mesmo nome
