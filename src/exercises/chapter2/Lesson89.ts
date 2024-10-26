/**
 * Lesson 89: Write a program to calculate the sum of positive integer odd values less than N
 */
export default class Lesson89 {

  /**
   * Calculates the sum of all positive odd integers less than the specified number.
   * @param {number} n - The upper limit (exclusive) for the summation of odd integers.
   * @return {number} - The sum of all positive odd integers less than n.
   */
  solution(n: number): number {
    let result = 0

    // Loop through all numbers less than n and add odd numbers to the result
    for (let i = 1; i < n; i++) {
      if (i % 2 !== 0) {
        result += i
      }
    }

    return result
  }
}
