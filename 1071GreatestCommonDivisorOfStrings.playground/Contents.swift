import Foundation

func gcdOfStrings(_ str1: String, _ str2: String) -> String {
		guard str1 + str2 == str2 + str1 else {return ""}

		var (s1, s2) = str1 > str2 ? (str1, str2) : (str2, str1)
		guard s1.count % s2.count != 0 else {return s2}

		for i in 0..<s2.count {
			if str1.count % s2.count == 0 && str2.count % s2.count == 0 {break}
			s2.removeLast()
		}
		
		return s2
}

var str1 = "ABCABC", str2 = "ABC"

print(gcdOfStrings(str1, str2))

