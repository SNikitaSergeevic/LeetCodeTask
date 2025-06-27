import Foundation

var greeting = "Hello, playground"

func search(_ nums: [Int], _ target: Int) -> Int {
	var lstIndex = (nums.count - 1) / 2
	var n = lstIndex
	var br = 0
	
	print("start n", n)
	var res = 0
	
	while res != -1 || nums[res] == target {
		print(n)
		if nums[n] == target {
			res = n
			break
		} else if n < 0 || n > nums.count - 1 {
			print("break 1")
			
			res = -1
			break
		}
		lstIndex = lstIndex > 1 ? lstIndex / 2 : 1
		n = nums[n] > target ? n - lstIndex : n + lstIndex
		if lstIndex == 1 {
			if br != 10 {
				br += 1
			} else {
				res = -1
				break
			}
		}
		
		
		if n < 0 || n >= nums.count {
			print("count: ", nums.count - 1, "n: ", n)
			res = -1
			break
		}
		
	}
	
	return res
}

var nums = [-1,0,3,5,9,18]
var nums2 = [-1,0,3,5,12]
var nums3 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]
var nums4 = [2, 5]

search(nums4, 5)
