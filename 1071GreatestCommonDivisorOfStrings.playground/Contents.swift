import Foundation

//func gcdOfStrings(_ str1: String, _ str2: String) -> String {
//
//	var (s1, s2) = str1.count >= str2.count ? (str1, str2) : (str2, str1)
//	var res = ""
//
//	while !s2.isEmpty {
//		if s1.first! == s2.first! {
//			if !res.isEmpty {
//				if res.first! == s1.first && res.count == str2.count {
//					break
//				} else if (str1.count / res.count) % 2 == 0 {
//					res += String(s2.removeFirst())
//					s1.removeFirst()
//				} else {
//					break
//				}
//			} else {
//				res += String(s2.removeFirst())
//				s1.removeFirst()
//			}
//		} else {
//			return ""
//		}
//	}
//	if !s2.isEmpty && s2.count % 2 != res.count % 2 {
//		res += String(s2.removeFirst())
//		s1.removeFirst()
//	}
//	if res.count == s1.count && res != s1 {
//		return ""
//	}
//	return res
//}
func gcdOfStrings(_ str1: String, _ str2: String) -> String {
	var (s1, s2) = str1.count >= str2.count ? (str1, str2) : (str2, str1)
//	var res = ""
	
	
	
	
	
	
	
//	return res
	return ""
}

var a = "ABCABC", b = "ABC"
var str1 = "ABABAB", str2 = "ABAB"
var f = "LEET", g = "CODE"
var h = "ABCDEF", j = "ABC"
// largest!! check count res and s2
//print("CABC".count, "ABC".count)

print(gcdOfStrings(str1, str2))



