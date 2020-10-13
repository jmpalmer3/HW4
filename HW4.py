import numpy as np 

#constants
N = 10
k = 1
L = 1
U0 = 1
v = 1
A = 1
h = L/(N+1)
f = A

# arr = np.array([1])
# arr = np.append(arr,2)
# print(arr)


matrix = [[1, 4, 5], 
    [-5, 8, 9],
    [1, 2, 3]]

def triAlgorithm():
    α = np.array([matrix[0][0]])
    g = np.array([f])

    # for j in range(1,N):
          α = np.append(α, matrix[j][j] - (matrix[j][j-1]/matrix[j-1][j-1])*matrix[j-1][j] )
    #     α[j] =a[j]− (b[j]/α[j−1])*c[j−1] 
    #     g[j] =f[j]− (b[j]/α[j−1])*g[j−1] 
    
    # u[N] =g[N]/α[N] 

    # for k in range(1,N-1)
    #     u[N−k] = (g[N−k]−c[N−k]*u[N−k+1]) / α[N−k]
    

triAlgorithm()











# def triAlgorithm():
#     α[1] = a[1] 
#     g[1] = f[1]

#     for j in range(2,N):
#         print(j)
#         α[j] =a[j]− (b[j]/α[j−1])*c[j−1] 
#         g[j] =f[j]− (b[j]/α[j−1])*g[j−1] 
    
#     u[N] =g[N]/α[N] 

#     for k in range(1,N-1)
#         u[N−k] = (g[N−k]−c[N−k]*u[N−k+1]) / α[N−k]
    

# triAlgorithm()











# # importing the required module 
# import matplotlib.pyplot as plt

# # line 1 points 
# x1 = [1,2,3] 
# y1 = [2,4,1] 
# # plotting the line 1 points  
# plt.plot(x1, y1, label = "line 1") 
  
# # line 2 points 
# x2 = [1,2,3] 
# y2 = [4,1,3] 
# # plotting the line 2 points  
# plt.plot(x2, y2, label = "line 2") 
  
# # naming the x axis 
# plt.xlabel('x - axis') 
# # naming the y axis 
# plt.ylabel('y - axis') 
# # giving a title to my graph 
# plt.title('Two lines on same graph!') 
  
# # show a legend on the plot 
# plt.legend() 
  
# # function to show the plot 
# plt.show() 
