import Foundation

func numIslands(_ grid: [[Character]]) -> Int {
	var nGrid = grid
	var counter = 0
	var sr = 0
	var sc = 0
	var queue2: Set<[Int]> = []
	
	for i in 0...nGrid.count - 1 {
		for k in 0...nGrid.first!.count - 1 {
			if nGrid[i][k] == "1" {
				queue2.insert([i, k])
				counter += 1
				while !queue2.isEmpty {
					sr = queue2.first![0]
					sc = queue2.first![1]
					// check right exist and comparison
					if (sc == 0 ? nil : nGrid[sr][sc - 1]) == "1" { // left
						queue2.insert([sr, sc - 1])
					}
					if (sc == nGrid.first!.count - 1 ? nil : nGrid[sr][sc + 1])  == "1" { // right
						queue2.insert([sr, sc + 1])
					}
					if (sr == nGrid.count - 1 ? nil : nGrid[sr + 1][sc]) == "1" { // down
						queue2.insert([sr + 1, sc])
					}
					if (sr == 0 ? nil : nGrid[sr - 1][sc]) == "1" { // up
						queue2.insert([sr - 1, sc])
					}
					nGrid[sr][sc] = "2"
					queue2.remove([sr, sc])
				}
			}
		}
	}
	return counter
}

let grid:[[Character]] = [["1","1","1"],
						  ["0","1","0"],
						  ["1","1","1"]]

numIslands(grid)


