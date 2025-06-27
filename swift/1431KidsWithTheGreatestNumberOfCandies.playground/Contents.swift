import Foundation

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
		var max = candies.max()!
		return candies.map {$0 + extraCandies >= max}
}
