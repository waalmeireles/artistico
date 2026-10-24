# Contexto do portfólio artístico

## Objetivo do projeto

Transformar o antigo portfólio de UGC em um portfólio artístico para Walquíria Meireles, com foco em teatro, circo e performance. O site é feito em HTML, CSS e JavaScript sem frameworks ou etapa de build, e deve funcionar localmente e no GitHub Pages.

## Arquivos principais

- `index.html`: página inicial do portfólio.
- `linguagem.html`: página de trabalhos por linguagem. Recebe o parâmetro `tipo` na URL:
  - `linguagem.html?tipo=teatro`
  - `linguagem.html?tipo=circo`
  - `linguagem.html?tipo=performance`
- `assets/`: fotos usadas no site e subpastas com imagens otimizadas.
- `CONTEXTO-PORTFOLIO.md`: este resumo para retomar o trabalho em outra conversa.

## Identidade visual e comportamento

- Paleta principal: terracota (`#c66a4a`), verde-musgo (`#78845a`), bordô (`#742d3d`) e preto (`#171515`), com papel claro como fundo neutro.
- Fontes: Bagel Fat One, Permanent Marker, Caveat e Spectral, carregadas do Google Fonts.
- Estética expressiva/editorial, com sombras marcadas, formas arredondadas e assimétricas.
- Layout responsivo, navegação adaptada para celular e preferências de movimento reduzido respeitadas.
- Cursor decorativo com brilho em dispositivos com mouse e efeito de brilho ao passar sobre itens interativos.
- As seções da página inicial têm divisores luminosos com uma estrela no centro.

## O que já foi implementado

### Página inicial (`index.html`)

- Capa com:
  - Nome: Walquíria Meireles.
  - Chamada: “Teatro, Circo & Performance”.
  - Texto: “Raízes maranhenses, vivência brasiliense. Criando pontes entre o corpo, a cena e o público.”
  - Foto de capa.
- Menu com links para Sobre, Trabalhos, Formação e Contato. “Trabalhos” leva à seção que mantém o título “Linguagens artísticas”.
- Seção “Sobre mim” com a apresentação de multiartista, trajetória desde a infância no teatro e atuação na cena desde 2014, além da relação com circo, performance, bastidores e produção.
- Seção “Linguagens artísticas” com cards clicáveis para Teatro, Circo e Performance. Cada card leva à página de trabalhos da respectiva linguagem.
- Seção de produção e criação, formação artística, contato e rodapé.
- A seção “Trabalhos em cena” e os filtros de trabalhos foram removidos da página inicial, conforme solicitado.
- Contatos:
  - WhatsApp: `(61) 99121-2653`, link para `https://wa.me/5561991212653`.
  - E-mail: `waalmeireles@gmail.com`, link `mailto:` que abre o app de e-mail do visitante.
  - Instagram: `@euwalmeireles`, link para o perfil.
- A antiga área de formulário foi substituída por uma foto artística com moldura arredondada assimétrica. Cada contato tem um ícone próprio e aparece como item clicável.

### Página de trabalhos (`linguagem.html`)

- Exibe trabalhos conforme a linguagem escolhida na URL.
- Teatro e Circo têm os títulos de trabalhos que foram informados, ainda sem imagens.
- Trabalhos sem foto aparecem como lista de títulos, sem caixas de imagem vazias. Trabalhos com `imagem` aparecem na grade de fotos.
- Empresas sem nenhum registro ficam ocultas. Hoje é o caso da Entretenimento Go, que aparece sozinha assim que receber itens.
- Performance foi organizada por empresa, em seções separadas:
  - **Posers**: 28 fotos JPG incluídas, otimizadas e organizadas em sequência visual aproximada por figurino/cenário.
  - **Fantastic**: aparecem quatro registros/títulos que já estavam no portfólio, mas ainda sem fotos específicas.
  - **Entretenimento Go**: seção criada, aguardando fotos e informações de eventos.
- Os cards de foto têm tamanho/proporção consistentes e molduras arredondadas assimétricas, com variações entre os cards. O enquadramento usa `object-fit: cover`.
- As fotos da Posers foram agrupadas visualmente com base em figurinos e cenários. Essa organização é aproximada: não se devem inventar nomes de eventos apenas pela aparência das fotos.

## Fotos atualmente no projeto

Em `assets/`:

- `walquiria-capa.jpg`: foto da capa.
- `walquiria-sobre.jpg`: foto da seção “Sobre mim”.
- `walquiria-contato.jpg`: foto da seção de contato.
- `linguagem-teatro.jpg`: foto do card de Teatro.
- `linguagem-circo.jpg`: foto do card de Circo.
- `linguagem-performance.jpg`: foto do card de Performance.
- `posers/posers-01.jpg` até `posers-28.jpg`: fotos da pasta Posers.

Todas são JPG de verdade e estão otimizadas: as fotos principais têm até cerca de 170 KB, e as da Posers têm no máximo 1200px no lado maior. Antes, algumas eram PNG com extensão `.jpg` e chegavam a 2 MB. Novas imagens devem seguir o mesmo padrão.

Na raiz do projeto também ficam:
- `favicon.svg`: ícone da aba.
- `apple-touch-icon.png`: ícone de atalho no iPhone.
- `og-imagem.jpg`: imagem de prévia do link, 1200×630.

## Pendências e próximos passos

1. Receber as fotos e, se houver, os nomes dos eventos da **Fantastic** e da **Entretenimento Go**. Colocar cada registro sob a empresa correta na página de Performance.
2. Receber fotos específicas para os cards e trabalhos de **Teatro** e **Circo**, caso a usuária queira substituir as imagens ou espaços reservados atuais.
3. A pasta original da Posers continha também arquivos HEIC e DNG que não foram incluídos. Foram adicionados somente 28 JPGs que puderam ser convertidos e otimizados. Se forem necessários, pedir versões JPG ou convertê-los com uma ferramenta compatível.
4. A usuária planeja remover algumas fotos da Posers depois, para equilibrar a quantidade de imagens entre as empresas. Não remover fotos sem ela indicar quais.
5. Ao receber novas imagens, sempre ajustar o enquadramento para valorizar a pessoa/ação e manter a grade visual consistente. Usar texto alternativo descritivo e otimizar imagens grandes quando possível.
6. Confirmar com a usuária os nomes de eventos quando eles não puderem ser identificados com segurança; evitar criar créditos, funções, datas ou contexto não fornecidos.
7. **Publicação:** o repositório é `https://github.com/waalmeireles/artistico.git` e o endereço final será `https://waalmeireles.github.io/artistico/`. `og:url` e `og:image` já apontam para esse endereço. Publicado em 2026-10-23: GitHub Pages ativo (branch `main`, pasta raiz). Para atualizar, basta commit + `git push`; o site atualiza em 1–2 minutos.
8. **Melhorias planejadas:** ampliar fotos ao clicar (lightbox), abas Teatro/Circo/Performance em `linguagem.html`, separar o CSS/JS repetido em arquivos compartilhados, ficha dos trabalhos (ano, função, direção, local), vídeos e currículo em PDF.

## Dados confirmados da artista

- Nome: Walquíria Meireles.
- Origem maranhense; vive em Brasília.
- Teatro desde a infância.
- Atua na cena artística desde 2014.
- Linguagens: teatro, circo e performance.
- Também tem interesse por bastidores e produção.
- Instagram: `@euwalmeireles`.
- E-mail: `waalmeireles@gmail.com`.
- WhatsApp: `61991212653`.
- Cidade: Brasília, DF.

## Validação

As páginas foram abertas no navegador durante o desenvolvimento. As verificações mais recentes do editor não apontaram erros em `index.html` e `linguagem.html`. O projeto não tem configuração de build ou suíte de testes dedicada.
