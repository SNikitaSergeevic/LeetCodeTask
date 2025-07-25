def findCircleNum(isConnected: list[list[int]]) -> int:
    # max_province = len(isConnected)

    # for i, _ in enumerate(isConnected) : 
    #     if not (0 in isConnected[i]) :
    #         return 1
    #     print(isConnected[i][i:len(isConnected)])
    #     for n, _ in enumerate(isConnected[i][i:len(isConnected)]) :
    #         # print(isConnected[i][n])
    #         if isConnected[i][n] and (n != (len(isConnected) - i - 1)) :
    #             max_province -= 1
    #     # print(max_province)




    
    # if not (0 in isConnected[0]) :
    #             return 1
    # n = 0
    # max_prov = len(isConnected)
    # need_check = range(max_prov)

    # while n <= len(isConnected) - 1 :
    #     print('   ' * n, isConnected[n][n:])
    #     for i, _ in enumerate(isConnected[n][n + 1:]) :
    #         if isConnected[n][i + n + 1]:
    #             max_prov -= 1
    #     n += 1


    if not (0 in isConnected[0]) :
                return 1
    n = 0
    max_prov = len(isConnected)
    need_check = list(range(max_prov))
    stack = [0]

    while stack :
        for i, _ in enumerate(isConnected[stack[0]]) :
            if i <= max_prov :
                
        
                
                





    # max_prov = 1
    # cash = {}

    # for i, _ in enumerate(isConnected) :
    #     if sum(isConnected[i]) == 1 :
    #         max_prov += 1
    #         continue
        
    #     for index, element in enumerate(isConnected[i]) :
    #         if index != i and element :
    #             if i in cash :
    #                 cash[i].append(index)
    #                 continue
    #             else :
    #                 cash[i] = [index]
    #     print(cash)
        # ######
        # l = []

        # for ll in list(cash.values()) :
        #     # l += ll
        #     l.append(ll)
        
        # print(l)


    return max_prov if max_prov < len(isConnected) else len(isConnected)





case1 = [[1,1,0],
         [1,1,0],
         [0,0,1]]

case2 = [[1,0,0],
         [0,1,0],
         [0,0,1]]

case3 = [[1,1,0,0,0,0,0,1,0,0,0,0,0,0,0],
         [1,1,0,0,0,0,0,0,0,0,0,0,0,0,0],
         [0,0,1,0,0,0,0,0,0,0,0,0,0,0,0],
         [0,0,0,1,0,1,1,0,0,0,0,0,0,0,0],
         [0,0,0,0,1,0,0,0,0,1,1,0,0,0,0],
         [0,0,0,1,0,1,0,0,0,0,1,0,0,0,0],
         [0,0,0,1,0,0,1,0,1,0,0,0,0,1,0],
         [1,0,0,0,0,0,0,1,1,0,0,0,0,0,0],
         [0,0,0,0,0,0,1,1,1,0,0,0,0,1,0],
         [0,0,0,0,1,0,0,0,0,1,0,1,0,0,1],
         [0,0,0,0,1,1,0,0,0,0,1,1,0,0,0],
         [0,0,0,0,0,0,0,0,0,1,1,1,0,0,0],
         [0,0,0,0,0,0,0,0,0,0,0,0,1,0,0],
         [0,0,0,0,0,0,1,0,1,0,0,0,0,1,0],
         [0,0,0,0,0,0,0,0,0,1,0,0,0,0,1]]

case4 = [[1,0,0,0,0,0,0,0,0,1,0,0,0,0,0],
         [0,1,0,1,0,0,0,0,0,0,0,0,0,1,0],
         [0,0,1,0,0,0,0,0,0,0,0,0,0,0,0],
         [0,1,0,1,0,0,0,1,0,0,0,1,0,0,0],
         [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0],
         [0,0,0,0,0,1,0,0,0,0,0,0,0,0,0],
         [0,0,0,0,0,0,1,0,0,0,0,0,0,0,0],
         [0,0,0,1,0,0,0,1,1,0,0,0,0,0,0],
         [0,0,0,0,0,0,0,1,1,0,0,0,0,0,0],
         [1,0,0,0,0,0,0,0,0,1,0,0,0,0,0],
         [0,0,0,0,0,0,0,0,0,0,1,0,0,0,0],
         [0,0,0,1,0,0,0,0,0,0,0,1,0,0,0],
         [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0],
         [0,1,0,0,0,0,0,0,0,0,0,0,0,1,0],
         [0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]]

print(findCircleNum(case1)) # 2
print('=========')
print(findCircleNum(case2)) # 3
print('=========')
print(findCircleNum(case3)) # 3
print('=========')
print(findCircleNum(case4)) # 8
