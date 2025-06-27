import Foundation

func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
	var res = image
	let current = image[sr][sc]
	guard current != color else{return res}
	res[sr][sc] = color
	if (sc == 0 ? nil : image[sr][sc - 1]) == current {
		res = floodFill(res, sr, sc - 1, color)
	}
	if (sr == 0 ? nil : image[sr - 1][sc]) == current {
		res = floodFill(res, sr - 1, sc, color)
	}
	if (image[sr].count - 1 == sc ? nil : image[sr][sc + 1]) == current {
		res = floodFill(res, sr, sc + 1, color)
	}
	if (image.count - 1 == sr ? nil : image[sr + 1][sc]) == current {
		res = floodFill(res, sr + 1, sc, color)
	}
	return res
}
