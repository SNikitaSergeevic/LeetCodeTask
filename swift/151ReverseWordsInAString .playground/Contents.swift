import Foundation

func reverseWords(_ s: String) -> String {
		var res: [String] = []
		var tmp = ""

		for i in s {
			if i != " " {
				tmp.append(i)
			} else {
				if tmp != "" {
					res.append(tmp)
					tmp = ""
				}
			}
		}
		if tmp != "" {
			res.append(tmp)
		}
		return res.reversed().joined(separator: " ")
	}
