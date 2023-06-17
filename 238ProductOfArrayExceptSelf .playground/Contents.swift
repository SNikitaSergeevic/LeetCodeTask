import Foundation


func productExceptSelf(_ nums: [Int]) -> [Int] {
	var pref: [Int] = []
	var suf: [Int] = []
	pref.append(1)
	suf.append(1)
	for i in 1...nums.count {
		pref.append(pref[i - 1] * nums[i - 1])
		suf.append(suf[i - 1] * nums[nums.count - i])
	}
	suf.reverse()
	for i in 1...nums.count  {
		suf[i - 1] = pref[i - 1] * suf[i]
	}
	suf.removeLast()
	return suf
}

var nums = [1,2,3,4]
//[-1,1,0,-3,3]
//[1,2,3,4]

print(productExceptSelf(nums))



// 24 12 8 6
