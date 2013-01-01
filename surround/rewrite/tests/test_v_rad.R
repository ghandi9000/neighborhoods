
test_v_rad <- function() {
  checkEquals(v_rad(0, 0), 0)               # nbr same x, same z
  checkEquals(v_rad(0.123, 0), 0)           # nbr level on +x
  checkEquals(v_rad(1, 0), 0)               # nbr level with target on +(x-axis)
  checkEquals(v_rad(-1, 0), pi)              # nbr level with target on -(x-axis)
  checkEquals(v_rad(1, 1), pi/4)             # nbr above target, 45 degree, +x
  checkEquals(v_rad(-1, 1), 3*pi/4)          # nbr above target 45 degree, -x
  checkEquals(v_rad(-0.5, 0.5), 3*pi/4)      # same as above
  checkEquals(v_rad(-1, -1), pi + pi/4)       # nbr 45 degree below, -x
  checkEquals(v_rad(0.5, -0.5), pi + 3*pi/4)  # nbr 45 degree below, +x
}



