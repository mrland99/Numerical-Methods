This file contains MATLAB code to solve a symmetric tridiagonal matrix - vector equation: Ax = b.

Where: A = Symmetric Tridiagonal Matrix
       x = Solution vector
       b = Target vector

Example: <br /> | 1 2 0 0 0 | |x1| &nbsp;&nbsp;  |b1|
         <br /> | 2 1 3 0 0 | |x2|  &nbsp;&nbsp; |b2|
         <br /> | 0 3 1 4 0 | |x3| = |b3|
         <br /> | 0 0 4 1 5 | |x4| &nbsp;&nbsp;  |b4|
         <br /> | 0 0 0 5 1 | |x5| &nbsp;&nbsp;  |b5|
         
The code is broken down into a bunch of helper functions for clarity:

Here is the hierarchy from top to bottom:

`solve_symmetric_tridiagonal.m` <--- `symmetric_tridiagonal_LU.m` + `intermediate_step_solver.m`

`intermediate_step_solver.m` <--- `step_a_solve.m` + `step_b_solve.m` + `step_c_solve.m`

`test.m` is demo code.


