import Foundation

var g = "hi"

//print(g.count)

//func maxProfit(_ prices: [Int]) -> Int {
//	var arr = prices.sorted()
//	var sum = 0
//
//	for i in 0..<arr.count - 1 {
//		var minIndex = prices.firstIndex(of: arr[i])!
//		for j in minIndex...prices.count - 1 {
//			if sum < prices[j] - prices[minIndex] {
//				sum = prices[j] - prices[minIndex]
//			}
//		}
//	}
//	return sum
//}



//func maxProfit(_ pricess: [Int]) -> Int {
//	var prices = pricess
//	var min = prices.min()!
//	var max = prices.max()!
//	var sum = 0
//	var lastIndex = prices.count - 1
//
//	if prices.firstIndex(of: max)! == 0 {prices.removeFirst(); max = prices.max()!}
//	if prices.firstIndex(of: min)! == prices.count - 1 {prices.removeLast(); min = prices.min()!}
//	if prices.count <= 2 {sum = (prices[1] - prices[0]) > 0 ? prices[1] - prices[0] : 0}
//
//	lastIndex = prices.count - 1
//
//	if prices.firstIndex(of: min)! < prices.firstIndex(of: max)! {
//		sum = max - min
//	} else if prices.firstIndex(of: min)! > prices.firstIndex(of: max)! && prices.firstIndex(of: min)! != lastIndex {
//		for j in prices.firstIndex(of: min)!...lastIndex {
//			if sum < prices[j] - min {
//				sum = prices[j] - min
//			}
//		}
//		for i in 0..<prices.firstIndex(of: max)! {
//			if sum < max - prices[i] {
//				sum = max - prices[i]
//			}
//		}
//	} else if prices.firstIndex(of: max)! != 0{
//		for i in 0..<prices.firstIndex(of: max)! {
//			if sum < max - prices[i] {
//				sum = max - prices[i]
//			}
//		}
//	} else {
//		var arr = pricess.sorted()
//		for i in 0..<arr.count - 1 {
//				var minIndex = pricess.firstIndex(of: arr[i])!
//				for j in minIndex...pricess.count - 1 {
//					if sum < pricess[j] - pricess[minIndex] {
//						sum = pricess[j] - pricess[minIndex]
//					}
//				}
//			}
//	}
//	return sum
//}

func maxProfit(_ prices: [Int]) -> Int {
	var sum = 0
	for i in 0..<prices.count - 1 {
		var minIndex = prices.firstIndex(of: prices.min()!)!
		for j in minIndex...prices.count - 1 {
			if sum < prices[j] - prices[minIndex] {
				sum = prices[j] - prices[minIndex]
			}
		}
	}
	return sum
}

var res = maxProfit([7,1,5,3,6,4])
var res2 = maxProfit([2,1,2,0,1])
var res3 = maxProfit([2,4,1])
var res4 = maxProfit([3,2,6,5,0,3])
var res5 = maxProfit([7,2,4,1])

