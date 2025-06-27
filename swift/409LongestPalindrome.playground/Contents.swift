import Foundation

print("worked")

func longestPalindrome(_ s: String) -> Int {
	var str = s.sorted()
	guard str.count != 1 else {return 1}
	guard str.count != 2 else {return str[0] == str[1] ? 2 : 1}
	var sum = 0
	var curCmpr = 1
	
	
	for i in 0..<str.count - 1 {
		if sum == 0 && i > 0 && str[i] != str[i + 1] && str[i] != str[i - 1] {
			sum += 1
		}
		if str[i + 1] == str[i] {
			curCmpr += 1
			if i + 1 == str.count - 1 {
				if curCmpr >= 2 {
					sum += (curCmpr % 2) == 0 ? curCmpr : curCmpr - 1
					if curCmpr == str.count && curCmpr % 2 != 0 {
						sum += 1
					}
				}
			}
		} else {
			if curCmpr >= 2 {
				sum += (curCmpr % 2) == 0 ? curCmpr : curCmpr - 1
			}
			curCmpr = 1
		}
		
	}
	if sum % 2 == 0 && str.count >= 3 && sum != str.count {
		sum += 1
	}
	return sum
}

var s = "aaaa"

print(longestPalindrome(s))
