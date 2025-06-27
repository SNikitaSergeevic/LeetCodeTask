import Foundation

var greeting = "Hello, playground"

var nums = [1,7,3,6,5,6]
var nums2 = [1, 0]
var nums3 = [0]

func pivotIndex(_ nums: [Int]) -> Int {
	guard nums.count != 1 else {return 0}
	var res = -1
	for i in 0..<nums.count {
		var left = 0
		var right = 0
		for p in i + 1..<nums.count {
			right += nums[p]
		}
		for p in 0..<i {
			left += nums[p]
		}
		if left == right {
			res = i
			break
		}
	}
	return res
}

print(pivotIndex(nums3))




