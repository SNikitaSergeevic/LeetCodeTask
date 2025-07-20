def canVisitAllRooms(rooms: list[list[int]]) -> bool:
        indicator = [0] * len(rooms)
        indicator[0] = 1
        stack = []
        stack += rooms[0]
        step = 1

        while stack  :
            if indicator[stack[0]] : 
                stack.pop(0)       
            else :
                indicator[stack[0]] = 1
                stack += rooms[stack[0]]
                step += 1
                stack.pop(0)

        return step >= len(indicator)



case1 = [[1],[2],[3],[]]
case2 = [[1,3],[3,0,1],[2],[0]]
case3 = [[1,3],[1,4],[2,3,4,1],[],[4,3,2]]

# print(canVisitAllRooms(rooms=case1))
# print(canVisitAllRooms(rooms=case2))
print(canVisitAllRooms(rooms=case3)) # true