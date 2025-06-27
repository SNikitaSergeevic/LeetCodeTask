import Foundation

var greeting = "Hello, playground"

func mergeAlternately(_ word1: String, _ word2: String) -> String {
	guard word1 != "" else {return word2}
	guard word2 != "" else {return word1}
	var (w1, w2) = (word1, word2)
	var t = String(w1.removeFirst()) + String(w2.removeFirst())
	t += mergeAlternately(w1, w2)
	return t
}

var a = "aceeee"
var b = "bdf"

print(mergeAlternately(a, b))
