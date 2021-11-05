︠d0cfdf47-8aca-4364-9275-6fe2b5686767︠
#
# CoCalc provides access to the SAGEMATH symbolic computation language (i.e. a very fancy programable calculator)
#
#####
#
# Basic linear algebra
#
####
#
# You can define a vector and a matrix
vector([pi, 2, 3, e])
matrix(2, 3, [1,pi,3,
              e,5,6])
︡d7baad8a-e32a-4898-a88a-d969f33a0de3︡
︠1f54bd01-1d2e-4a5f-b03c-e8d265bfb4d7s︠

#
# You can store these for later use by assigning them names.
# For example, we can define the bases for R^4 and R^3 that were defined in Exercise 1 on Worksheet 23
#
u1=vector([1,1,1,1])
u2=vector([2,2,2,0])
u3=vector([1,3,0,0])
u4=vector([-1,-1,0,0])
#
w1=vector([1,2,1])
w2=vector([3,1,1])
w3=vector([1,1,2])
#
u1
u2
u3
u4
w1
w2
w3
︡b0a904ea-4e86-4d7d-8c9e-5e51ad8920a3︡
︠4df284d7-99d0-4c10-b3f7-ac35c9913f27s︠
#
# We can even use this basis in CoCalc
#
RR4=VectorSpace(SR,4) # We've named a vector space, RR4, using the standard real vector space, R^4
RR3=VectorSpace(SR,3) # We've named a vector space, RR3, using the standard real vector space, R^3
V=RR4.subspace_with_basis([u1,u2,u3,u4]) # V is the subspace of RR4 spanned by u1, u2, u3, and u4
W=RR3.subspace_with_basis([w1,w2,w3])    # W is the subspace of RR3 spanned by w1, w2, and w3

RR4.basis()
V.basis()
W.basis()
︡56e13526-81ee-4596-8000-88a591880ce9︡
︠750b9798-263e-4c75-a01b-ae3089925a30︠
#
# Note that the vectors are listed as rows, rather than columns. This is just so output is easier to read.
#
# Now, we can convert any vector from R^4 into into V's coordinates. Or any vector from R^3 into W's coordinates.
#
V.coordinate_vector(RR4([1,2,3,1]))      # Convert the vector [1,2,3,1] into V coordinates
W.coordinate_vector(RR3([1,2,7]))        # Convert the vector [1,2,7] into W coordinates
︡71e2ae06-0e39-4142-9c1a-c51246939eb6︡
︠98c6292c-c019-4dae-bd85-5167635558b2︠
#
# Finally, we can solve equations nd fins solutions sets, or find a basis for the null space or range.
#
M=matrix(3,4,[1, 2, 3, 5/2,
              1, 2, 3, 0,
              0, 0, 0,-1])

v=vector([1,1,0])

print 'M=\n', M
print '\nv=\n', v

print '\n\nA solution to the equation Mx=v: ', M.solve_right(v)                                           # find a solution to the equation Mx=v
print '\n\nA basis for the null space of M (note, vectors are printed as rows):\n', M.right_kernel()      # find a basis for the null space
print '\n\nA basis for the range of M (note, vectors are printed as rows):\n', M.column_space()           # find a basis for the range
︡a10c81fd-30cb-4dd1-b468-c94d4d5af8e7︡
︠11b454b8-b683-41bc-ac52-e2aa9ac5cb70︠



︠29330173-d720-40e8-bbf2-cfe475d95905︠
#
#
# Exercises:
# Use CoCalc to:
# 1. verify your computations on Worksheet 23
# 2. define a 6x6 matrix , A, and
#     i. find a basis for the null space of A
#    ii. find a basis for the range of A
#   iii. compute its determinant using A.determinant()
#    iv. if your determinant is zero, modify A and repeat the steps above
#     v. if your determinant is non-zero...
# 3. Use the row operations commands found on the reference sheet to modify A, and compute the determinant of the resulting matrices. Record your observations.
#









