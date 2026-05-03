extends Node2D

# declaração de variáveis  
#var vida: int = 3
#var hp: float = 5.6
#var nome_player: String = "Master"
#var texto_npc: String = "Cuidado perigo a frente "
#var lampada: bool = true

var hp: int = 3
var mana: float = 100.00
var nome_player: String = "Fernando"
var espada: bool = false

#funcao ready e executado  1 unica vez quando a cena foi carregada dentro do jogo  
func _ready():
    print(hp)
    nome_jogador()

# função process e executado 30 vezes por segundo quando a cena e carregada dentro do jogo (usado para botao, contador de tempo e vida  )
func _process(_delta):
    pass
    #pass ignora a função

#função physics porcess e executado 30 vezes por segundo mas e indicado para simulacão fisicas do jogo (forca, impacto, vento , gravidade )
func _physics_process(_delta):
    pass

#pode ser criada sua propria função , ela tem que ser chamada pelo código , se não ela não e carregada na cena 
func nome_jogador():
    print("escolha seu nome")