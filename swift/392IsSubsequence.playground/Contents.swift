import Foundation

func isSubsequence(_ s: String, _ t: String) -> Bool {
		if s == "" && t == "" {
			return true
		}
		if s == "" {return true}
		if t == "" {return false}
	   var arrS = Array(s)
	   var arrT = Array(t)
	   var b = 0
	  for i in 0..<arrT.count {
		  if arrS[b] == arrT[i] {b += 1}
		  if b == s.count {return true}
	  }
	  return false
   }

//s = "abc", t = "ahbgdc"
