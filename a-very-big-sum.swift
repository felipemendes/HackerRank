// In this challenge, you are required to calculate and print the sum of the elements in an array, keeping in mind that some of those integers may be quite large.
//
// https://www.hackerrank.com/challenges/a-very-big-sum/problem

import Foundation

// Complete the aVeryBigSum function below.
func aVeryBigSum(ar: [Int]) -> Int {
  return ar.flatMap{ $0 }.reduce(0,+)
}
