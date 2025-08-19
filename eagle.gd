extends CharacterBody2D
const SPEED = 50
var chase = false

func _ready() -> void:
	get_node("AnimatedSprite2D").play("attack")

func _physics_process(delta: float) -> void:
	#Gravity for frog
	velocity.y += get_gravity().y * delta
	var player = get_node("../../Player/Player");
	var sprite = get_node("AnimatedSprite2D")


	if chase:
		get_node("AnimatedSprite2D").play("Jump")
			
		var direction = sign((player.position - self.position).normalized())
		if direction.x > 0:
			sprite.flip_h = true
			print(direction)
		elif direction.x < 0:
			sprite.flip_h = false
			print(direction)
		velocity.x = direction.x * SPEED
	else:
		get_node("AnimatedSprite2D").play("fly")
		velocity.x = 0
	move_and_slide()
		

func _on_player_detection_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		chase = true


func _on_player_death_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		Game.playerHP -= 3
