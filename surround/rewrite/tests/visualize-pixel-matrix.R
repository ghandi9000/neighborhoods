
source("nbrs3d/vis.R")  # 3d visualization stuff (p3d, rgl shapes)
source("neighborhoods/surround/rewrite/pixel_matrix.R")

draw_hood_full(nbrs = nbrs)  # 2D representation
p3d(nbrs)  # 3D
abclines3d(0, a = diag(4), col = "slategray")
add_tree(targ, wire=TRUE)



m <- diag(4)
m[1,] <- c(0, 1, 1, 0)
abclines3d(0, a = m, col = "darkred", lwd = 3)

## Draw 3D tangent lines
add_tangents <- function(targ, nbr, ...) {
  r <- min(c(sqrt(nbr[["crarea"]]/pi), nbr[["dist"]]))  # if crown of nbr obscures target, set to dist
  d <- nbr$dist
  theta1 <- asin(r/d)
  theta <- theta1*2
}
