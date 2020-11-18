// Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.
//
// https://www.hackerrank.com/challenges/time-conversion/problem

import Foundation

/*
 * Complete the timeConversion function below.
 */
func timeConversion(s: String) -> String {
  var hour = String(s.prefix(2))
  let period = s.suffix(2)
  
  if period == "AM" && hour == "12" {
    hour = "00"
  } else if period == "PM" && hour != "12" {
    hour = "\(Int(hour)! + 12)"
  }
  
  return String(hour + s.suffix(8).prefix(6))
}