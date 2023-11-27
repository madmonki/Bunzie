extends Area2D

func _on_jumppad_body_entered(body):
	if body.has_method("boost"):
		$AnimationPlayer.play("Boost")
		body.boost()
