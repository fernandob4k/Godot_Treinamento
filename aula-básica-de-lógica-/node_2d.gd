extends Node2D

# declaração de variáveis  
#var vida: int = 3
#var hp: float = 5.6
#var nome_player: String = "Master"
#var texto_npc: String = "Cuidado perigo a frente "
#var lampada: bool = true

var hp: int = 5
var mana: float = 100.00
var nome_player: String = "Fernando"
var espada: bool = false
#cria uma lista uma array para separar os itens de dentro do array usa se a virgula 
#para adicionar mais um item na lista por exemplo usa se lista.append("amarelo")
var lista: Array = ["azul", "vermelho", "verde"]
# dictionaty tem que estar entre chaves {} com ele voce consegue atribuir valor a string ex abaixo pelo nome consegue achar o poder do personagem
var dic: Dictionary = {
"goku": 10,
"vegeta": 15,
"picolo": 5}


#chama o no label texto e agora da pra mudar pelo código
@onready var texto: Label = $texto
@onready var titulo: Label = $titulo

#funcao ready e chamada e executado  1 unica vez quando a cena foi carregada dentro do jogo  
func _ready():
    #para escolher um item da lista tem que saber qual o index dele e colocar entre parenteses 
    lista.append("roxo")
    print(lista)
    #para printar o nome usa se dic e entre paretes o nome que deseja mostrar .has entre colchetres( ) procura dentro do dic se tem a palavra vegeta e retorna um bool
    print(dic.has("goku"))
    titulo.text = lista[1]
    texto.text = "teste se funciona"
    for i in 6:
    #str (hp) transforma int para string    
        texto.text = str(hp)
        hp -= 1
        #ele cria um delay de 1 segundo para continuar o código vai tirando -1 -1 de hp e mostrando no texto 
        await get_tree().create_timer(1).timeout
    #if hp == 3:
    #    print("jogador vida cheia ")
    #elif hp == 2:
    #    print("jodagor vida metade")
    #elif hp == 1:
    #    print("jogador vida fraca")
    #else:
    #    print("jogador morreu")

# função process e chamada e executado 30 vezes por segundo quando a cena e carregada dentro do jogo (usado para botao, contador de tempo e vida  )
func _process(_delta):
    if Input.is_action_just_pressed("ui_left"):
        texto.text = nome_player
    #pass ignora a função
    if Input.is_action_just_pressed("ui_up"):
        titulo.text = "up"
        
        
#função physics porcess e chamda e executado 30 vezes por segundo mas e indicado para simulacão fisicas do jogo (forca, impacto, vento , gravidade )
func _physics_process(_delta):
    pass

#pode ser criada sua propria função pode ser chamada no ready ou process , ela tem que ser chamada pelo código , se não ela não e carregada na cena 
func nome_jogador():
    print("escolha seu nome")
