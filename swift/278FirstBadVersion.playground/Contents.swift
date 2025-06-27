import Foundation

var greeting = "Hello, playground"

func firstBadVersion(_ n: Int) -> Int {
	   var res = n / 2
	   var lastStep = res
	
	   while !isBadVersion(res) {
		   lastStep = res
		   if (n - res) / 2 > 1 {
			   res += (n - res) / 2
		   } else {
			   res += 1
		   }
	   }
	
	   while isBadVersion(res) {
		   if (res - lastStep) / 2 > 1 && isBadVersion(res - ((res - lastStep) / 2)) {
			   res -= (res - lastStep) / 2
		   } else {
			   if isBadVersion(res - 1) {
				   res -= 1
			   } else {
				   break
			   }
		   }
	   }
	
	   return res
   }
