import Foundation

func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {

	let taxtip = Double(tip_percent)/100 + Double(tax_percent)/100 + 1

	print(Int(round(meal_cost*taxtip)))

}

solve(meal_cost: 12.00, tip_percent: 20, tax_percent: 8)
