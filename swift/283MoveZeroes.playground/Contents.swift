import Foundation

func moveZeroes(_ nums: inout [Int]) {
		var index = 0
		var limit = 0
		while limit <= nums.count - 1 {
			limit += 1
			if nums[index] == 0 {
				nums.append(0)
				nums.remove(at: index)
			} else {
				index += 1
			}
		}
	}
