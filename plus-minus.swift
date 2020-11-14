// Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.
//
// https://www.hackerrank.com/challenges/plus-minus/problem

import Foundation

// Complete the plusMinus function below.
func plusMinus(arr: [Int]) -> Void {
  let resultFormat = "%.6f"
  let n = Double(arr.count)
  let positives = arr.filter { $0 > 0 }
  let negatives = arr.filter { $0 < 0 }
  let even = arr.filter { $0 == 0 }
  
  let positivesProportion = Double(positives.count) / n
  let negativesProportion = Double(negatives.count) / n
  let evenProportion = Double(even.count) / n
  
  print(String(format: resultFormat, positivesProportion))
  print(String(format: resultFormat, negativesProportion))
  print(String(format: resultFormat, evenProportion))
}
