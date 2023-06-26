import Foundation

func increasingTriplet(_ nums: [Int]) -> Bool {
	var res = false
	var gMax = nums.count - 1 //  search largest
	var gAvg = 1
	var gMin = 0 // nums[i - 1] 	   nums[i]       nums[i + 1] search lowes
	
	var c = nums.count - 1
	var i = 0

	guard nums.count > 3 else {
		print("guard")
		if nums.count <= 2 {return false}
		if nums.count == 3 {return nums[0] < nums[1] && nums[1] < nums[2]}
		return false
	}

//	for i in 1..<nums.count - 1 {
//		print(i)
//		if (c - i) <= i {break}
//		if nums[c - i - 1] < nums[c - i] && nums[c - i] < nums[c - i + 1] {res = true; break}
//		if nums[i - 1] < nums[i] && nums[i] < nums[i + 1] {res = true; break}
//		var min = nums[i - 1] < nums[i] ? nums[i - 1] < nums[i + 1] ? nums[i - 1] : nums[i + 1] : nums[i] < nums[i + 1] ? nums[i] : nums[i + 1]
//		var max = nums[c - i - 1] < nums[c - i] ? nums[c - i] < nums[c - i + 1] ? nums[c - i + 1] : nums[c - i] : nums[c - i - 1] < nums[c - i + 1] ? nums[c - i + 1] : nums[c - i - 1]
//		if gMin > min {gMin = min}
//		if gMax < max && gMax <= gMin {gMax = max}
//		if gMin < nums[i + 1] && nums[i + 1] < gMax {res = true; break}
//		if gMin < nums[c - i - 1] && nums[c - i - 1] < gMax {res = true; break}
//		if gMin < nums[c - i] && nums[c - i] < gMax {res = true; break}
//
//		print(gMin, gMax)
//	}
	
	var z = zip(Array(0...nums.count - 1), nums)
	print(z)
	return nums[gMin] < nums[gAvg] && nums[gAvg] < nums[i]
	
}

var nums = [9,10,5,11,10,9,8] // true
//var nums = [4,5,2147483647,1,2]
//var nums = [2,4,-2,-3]
//var nums = [1,5,0,4,1,3]
//[5,4,3,2,1]
//[2,1,5,0,4,6]
//var nums = [20,100,10,12,5,13]
print(increasingTriplet(nums))


