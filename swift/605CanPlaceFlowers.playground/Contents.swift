import Foundation

func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
		var nn = n
		var fb: [Int] = flowerbed
		var i = 0

		while nn != 0 {
			if fb[i] == 0 {
				if i == fb.count - 1 && i == 0 {nn -= 1; break} // check [0]

				// fb[i] = (i == 0 && fb[i + 1] == 0) ? 1 : 0
				// nn -= (i == 0 && fb[i + 1] == 0) ? 1 : 0
				
				if i == 0 && fb[i + 1] == 0 {
					fb[i] = 1
					nn -= 1
				} else if i == fb.count - 1 {
					if fb[i - 1] == 0 {
						fb[i] = 1
						nn -= 1
					}
				} else {
					if fb[i + 1] == 0 && fb [i - 1] == 0 {
						fb[i] = 1
						nn -= 1
					}
				}
			}
			i += 1
			if i > fb.count - 1 {break}
		}
		return  nn == 0
	}
