import Foundation

public func getMean(_ array: [Int]) -> Double {
	let result = Double(Double(array.reduce(0, +)) / Double(array.count))
	return Double(round(10.0*result)/10.0)
}

public func getMedian(_ array: [Int]) -> Double {
	let index = Double(array.count-1) / 2.0
	let result = getMean([array.sorted()[Int(floor(index))], array.sorted()[Int(ceil(index))]])
	return Double(round(10.0*result)/10.0)
}

public func getMode(_ array: [Int]) -> Int {
	var result: Int = 0
	var weight: Int = 0
	var weights = [Int: Int]() // [number: count]

	for item in array.sorted() {
		weights[item] = (weights[item] != nil) ? weights[item]! + 1 : 1
	}

	for (key, value) in weights.sorted(by: <) {
		if weight < value {
			result = key
			weight = value
		}
	}

	return result
}

public func getWeightedMean(data: [Int], weighs: [Int]) -> Double {
	guard data.count == weighs.count else { fatalError("Bad input!") }

	var result = 0.0
	var results = 0.0
	var counts = 0.0

	for i in 0..<data.count {
		results += Double(data[i] * weighs[i])
		counts += Double(weighs[i])
	}

	result = results / counts

	return Double(round(10.0*result)/10.0)
}

public func getQuartiles(_ array: [Int]) -> [Int] {
	let data = array.sorted()
	var result = [0, 0, 0]

	result[0] = Int(getMedian(Array(data.prefix(data.count/2))))
	result[1] = Int(getMedian(data))
	result[2] = Int(getMedian(Array(data.suffix(from: data.count/2 + data.count%2))))

	return result
}

public func getStandardDeviation(_ data: [Int]) -> Double {
	var result = 0.0
	let mean = getMean(data)

	for item in data {
		result += (Double(item)-mean)*(Double(item)-mean)
	}

	result = sqrt(result / Double(data.count))

	return Double(round(10.0*result)/10.0)
}

func getUnweighedArray(data: [Int], weighs: [Int]) -> [Int] {
	var result = [Int]()

	for i in 0..<data.count {
		for _ in 0..<weighs[i] {
			result.append(data[i])
		}
	}

	return result
}

func getInterquartileRange(_ array: [Int]) -> Double {
	var data = getQuartiles(array)

	return Double(data[2] - data[0])
}
