// Its base and height are both equal to n. It is drawn using # symbols and spaces. The last line is not preceded by any spaces. Write a program that prints a staircase of size n.
//
// https://www.hackerrank.com/challenges/staircase/problem

import Foundation

// Complete the staircase function below.
func staircase(n: Int) -> Void {
  for index1 in 1...n {
    let counter = n - index1
    if index1 != 1 {
      print("")
    }
    for index2 in 1...n {
      counter < index2 ? print("#", terminator: "") : print(" ", terminator: "")
    }
  }
}