#!/usr/bin/python3

import xpress as xp
import random

def xpress_test(num_vars: int, num_constraints: int) -> None:
    random.seed(0)

    problem = xp.problem()
    binvars = [xp.var(vartype=xp.binary) for _i in range(num_vars)]
    problem.addVariable(binvars)

    for _i in range(num_constraints):
        problem.addConstraint(xp.Sum((2*random.random()-1) * binvar for binvar in binvars) <= 2*random.random() - 1)

    problem.setObjective(xp.Sum(xp.Sum((2*random.random()-1) * binvar for binvar in binvars)))
    problem.solve()

if __name__ == "__main__":
    xpress_test(num_vars = 10, num_constraints = 2)
#    xpress_test(num_vars = 1000, num_constraints = 50)
#    xpress_test(num_vars = 5000, num_constraints = 50)
