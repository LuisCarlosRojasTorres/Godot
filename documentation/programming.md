
## Referencia
[LINK](https://www.youtube.com/watch?v=fQf_ocKIHWM)

## Conteudo

### Como rodar codigo
1. Codigo para funcionar necesita estar atrelado a un `node`. Arrastrar un script a un nodo lo assigna.
2. Para que la funcion sea llamada deve estar dentro de la funcion `_ready()`
3. Para rodar el codigo `F6`

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

### Operadores Comparacion

### Operadores Booleanos

### Combinacion de Operadores 

### Condicionales 

### Bucles

### Estructuras 

### Arrays

### Diccionarios

### Strings 

### Métodos

#### Por valor ou referencia

### OOP
