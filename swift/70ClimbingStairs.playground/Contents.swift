import Foundation

func climbStairs(_ n: Int) -> Int{
	var res = 1
	var one = n - 2 // 12
	var two = 1 // 5
	while one > 1 {
		var flu = 1
		var fld = 1
		for i in 1...one + two - 1 {
			if i >= one {
				flu *= (i + 1)
			}
			if i < two {
				fld *= (i + 1)
			}
			
			if flu % 10 == 0 && fld % 10 == 0 {
				flu = flu / 10
				fld = fld / 10
			}
			if flu % 3 == 0 && fld % 3 == 0 {
				flu = flu / 3
				fld = fld / 3
			}
		}
		res += flu/fld
		one -= 2
		two += 1
	}
	if one == 1 {
		res += two + 1
	} else if one == 0 {
		res += 1
	}
	return res
}

print(climbStairs(45))


func climbStairs2(_ n: Int) -> Int {
		var zero = 1, one = 1, step = 2
		while step <= n {
			let temp = zero + one
			zero = one
			one = temp
			step += 1
		}
		return one
	}

print(climbStairs2(45))

func climbStairs3(_ n: Int) -> Int {
	guard n > 0 else {return 0}
	if n == 1 {return 1}
	if n == 2 {return 2}
	var res = 0
	res = climbStairs3(n - 1) + climbStairs3(n - 2)
	return res
}

print(climbStairs3(6))
