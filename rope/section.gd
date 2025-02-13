extends RigidBody3D

# Should be multiplied by cross surface area of the tether, but let's keep the
# math low for now
const DRAG = 0.3


func _physics_process(delta):
	var body_frame_speeds = (self.linear_velocity) * self.transform.basis
	var z_speed = body_frame_speeds.dot(Vector3(0, 0, 1))
	var perpendicular_speed = body_frame_speeds - Vector3(0, 0, z_speed)
	apply_central_force(self.transform.basis * (-perpendicular_speed * DRAG))
