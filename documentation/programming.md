
## Referencia
[LINK](https://www.youtube.com/watch?v=fQf_ocKIHWM)

## Conteudo

### Como rodar codigo
1. Codigo para funcionar necesita estar atrelado a un `node`. Arrastrar un script a un nodo lo assigna.
2. Para que la funcion sea llamada deve estar dentro de la funcion `_ready()`
3. Para rodar el codigo `F6`
4. Para cortar una linha `\`
``` gdscript
func _ready() -> void:
       
   print("Lobo")
```

### Comentarios
- `#` para un comentario
- `#TODO`, `#ATTENTION`, `#ALERT`, `#INFO`, `#TEST`, `#BUG` e `#WARNING` sao comentarios especiais
- `#region <section>` e `#endregion` organizan el codigo.

### Variaveis
- Para declarar se utiliza `var`   
``` gdscript
var dummy_string = "Rufa y Lobo"
var dummy_int = 4888
var dummy_real = 3.14
var dummy_boolean = true
var dummy_null = null
```
- Arrays podemm ser criados  
``` gdscript
# Crear empty Array
var dummy_array = []
dummy_array = [1,2,3]
print(dummy_array) #[1, 2, 3]
print(dummy_array[0]) #1
print(dummy_array.size()) #3
```
- Variaveis de vetor `Vector2` and `Vector3`  
``` gdscript
var v1 = Vector2(3,4)
var v2 = Vector3(3,4,5)
const VIDA_INICIAL = 100
```

- contantes
``` gdscript
const VIDA_INICIAL = 100
```
### Tipado Dinamico 
- Tipagem estática.
``` gdscript
var dummy_string: String = "Rufa y Lobo"
var dummy_int: int = 4888
var dummy_real: float = 3.14
var dummy_boolean: bool = true
var dummy_null = null
var v1: Vector2 = Vector2(3,4)
```
### Operadores Aritmeticos
- Los operadores `+,-,*,/,**, %` igual que python
### Operadores Comparacion
- Los operadores `==, !=, >,<,>=,<=` igual que python

### Operadores Booleanos
- Se usa :
  - `and` em vez de `&&`
  - `or` em vez de `||`
  - `not` em vez de `!`

### Condicionales 
- Igual que python:
``` gdscript
const DUMMY_CONSTANT = 5
if DUMMY_CONSTANT  > 5:
	print("Menor que 5")
else:
	print("Maior o igual a 5")
```
### Bucles
- While: Igual que Python  
``` gdscript
const DUMMY_CONSTANT = 5
var counter = 0
while(counter<DUMMY_CONSTANT):
	print(counter)
	counter+=1
```
- For: Igual a Python  
``` gdscript
for index in "LOBO":
	print(index)

var dummy_array = [0,1,1,2,3,5,8]
for index in dummy_array:
	print(index)	
```

- `continue`, `break` existem e são iguais em Python.

### Arrays
- `.append()`
- `.append_array(other_array)`
- `.find(value)`
- `.insert(index, <value>)`
- `.size()`
- `.remove_at(position)`

- Ordenamento:
  - `.sort()`
  - `.reverse()`
  - `.shuffle()`
  - `.clear()`


### Diccionarios

``` gdscript
var dummy_dict = {
	key1 = 3, 
	key2 = 4,
	key3 = 5
	}
print(dummy_dict)	
print(dummy_dict["key1"])	
dummy_dict.key1 += 1 
print(dummy_dict)	
dummy_dict.key2 = [6,7,8]
print(dummy_dict)	
dummy_dict.erase("key3")
print(dummy_dict)	

for key in dummy_dict.keys():
	print(key)
```

### Strings 
- Se puede concatenar con `+`
- `\"`, `\\`
- `.replace("string1","string2")`

### Manual
- `Control` + `Click in command` 
### Métodos

``` gdscript
func dummy(param1, param2 = <default_param>):
   return #optional
```

- Para implementar a função depois utilizar `pass` en vez de `return`

#### Por valor ou referencia
- Tipos complexos como `dict` ou `arrays` se passam por referencia nas funções.
- Os tipos simples é por valor

### OOP
- Godot tem classes predefinidas.
- Para testar:
  1. Click on `2D` view
  2. Drag the `icon.svg`

``` gdscript
class_name Dummy_Object
extends Sprite2D

var velocidad = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	mover(delta)
	pass
	
func mover(delta: float) -> void:
	position.x += velocidad*delta
```
