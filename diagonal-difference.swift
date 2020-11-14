// Given a square matrix, calculate the absolute difference between the sums of its diagonals.
//
// https://www.hackerrank.com/challenges/diagonal-difference/problem

import Foundation

/*
 * Complete the 'diagonalDifference' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts 2D_INTEGER_ARRAY arr as parameter.
 */

func diagonalDifference(arr: [[Int]]) -> Int {
  let total = arr.count
  var primaryDiagonal: Int = 0
  var secondaryDiagonal: Int = 0
  
  for index in 0..<total {
    primaryDiagonal += arr[index][index]
    secondaryDiagonal += arr[index][total-index-1]
  }
  
  let difference = abs(primaryDiagonal - secondaryDiagonal)
  return difference
}
