// Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.
//
// https://www.hackerrank.com/challenges/mini-max-sum/problem

import Foundation

// Complete the miniMaxSum function below.
func miniMaxSum(arr: [Int]) -> Void {
  let hasAllItemsEqual = arr.allSatisfy { $0 == arr.first }
  if hasAllItemsEqual {
    let result = arr.dropFirst().reduce(0, +)
    print("\(result) \(result)")
    return
  }
  
  let min = arr.filter { $0 != arr.max() }.reduce(0, +)
  let max = arr.filter { $0 != arr.min() }.reduce(0, +)
  print("\(min) \(max)")
}
