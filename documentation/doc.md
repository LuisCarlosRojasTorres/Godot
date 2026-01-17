# Godot
- Isso aqui é um resumo do video de `findemor` [LINK](https://www.youtube.com/watch?v=-_LiMyZGoXw)
- Assets gratis [LINK](https://kenney.nl/assets)

## Interface
O godot tem tres areas:
1. O scene (izquerda): Tem a jerarqui da scena e o systemfile
2. O workspace (centro):  para editar e tmbm tem accesso ao output do console e música.
3. O inspector (direita):  com as propriedades do que vc selecionou

Para deixar o godot com a conf de fabrica: `ToolBar > Editor > Editor Layout > Default`

## Scenes
- Todos os jogos começam criando uma `scene`.
- As `scenes` podem conter um ou varios `nodes`, e dependendo do que vc queira fazer vai utilizar algum tipo específico de `node`
  - Existem nodes:
    - `2D`: são azuis
    - `3D`: são vermelhos
    - `control`: são verdes
    - `multiuse`: são gris
  - os `nodes` são os blocos contrutivos básicos de godot (que nem uma  peça do lego).
    - Num lego de carro (jogo), varios tijolinhos differentes (`nodes`) formariam uma porta (`scena`). E pode ser duplicado para ter duas portas.
  - Cada `node` tem tipo, nome e propriedades únicas e pode-se comunicar com outros `nodes`.
  - Então a organização em godot é uma árvore Jogo > `scenes` > `scenes` > `nodes`.

- Como a organização tem forma de árvore, toda `scene` deve começar por um `node` raiz.
- Os tipos básicos de `node`:
  1. `CharacterBody2D`
  2. `RigidBody`
  3. `Solid`

### Personagem principal
- Para o personagem principal se começa por um `CharacterBody2D`.
- Para adicionar um sprite 