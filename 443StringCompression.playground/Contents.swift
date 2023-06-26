import Foundation

func compress(_ chars: inout [Character]) -> Int {
		if chars.count == 1 {return 1}
		var res = ""
		var currentChar = chars[0]
		var currentCharQuant = 1

		for i in 1..<chars.count {
			
			if chars[i] == currentChar && i != chars.count - 1 {
				currentCharQuant += 1
			} else {
				if i == chars.count - 1 {
					if chars[i] != currentChar {
						res.append(currentChar)
						if currentCharQuant > 1 {res.append(String(currentCharQuant))}
						res.append(chars[i])
						chars = Array(res)
						return res.count
					} else {
						currentCharQuant += 1
					}
				}
				if currentCharQuant > 1 {
					res.append(currentChar)
					res.append(String(currentCharQuant))
				} else {
					res.append(currentChar)
				}
				currentChar = chars[i]
				currentCharQuant = 1
			}
			
		}
		
		chars = Array(res)
		return res.count
	}

