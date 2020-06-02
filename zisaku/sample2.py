from pyNN.nest import *
print("helllo")
setup(timestep=0.1,min_delay=0.1,max_delay=10.0)

p1 = Population(100, IF_curr_alpha, structure=space.Grid2D())


end()
