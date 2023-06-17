import Foundation

func reverseVowels(_ s: String) -> String {
		var key = "aAeEiIoOuU"
		var rev = String(s.reversed()).filter{ key.contains($0) }
		var res = ""

		for i in s {
			if key.contains(i) {
				res.append(rev.first!)
				rev.removeFirst()
			} else {
				res.append(i)
			}
		}
		return res
	}
