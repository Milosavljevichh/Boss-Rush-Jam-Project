extends Area2D
class_name AttackComponent

@export var attack : int
@export var hurtbox: CollisionShape2D

#If this component enters the HITBOX COMPONENTS area, it passes it the damage that it will pass to the HEALTH COMPONENT
func _on_area_entered(area: Area2D) -> void:
	if area.has_method("get_class_name") && area.get_class_name() == "HitboxComponent":
		area.damage(attack)
		print(attack)
#If the parent is a BULLET it'll destroy itself
		if get_parent() is Bullet:
			get_parent().destroySelf()

func add_damage(damage: int) -> void:
	attack += damage

func _on_idle_time_timeout() -> void:
	pass # Replace with function body.
