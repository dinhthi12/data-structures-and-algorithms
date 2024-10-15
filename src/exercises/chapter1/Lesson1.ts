/**
 * Lesson 1: Class to calculate the sum S(n) = 1 + 2 + 3 + ... + n.
 */
export default class Lesson1 {

  /**
   * Calculates the sum from 1 to n.
   * @param {number} n - The upper limit number to calculate the sum.
   * @return {number} - The sum of numbers from 1 to n.
   */
  solution(n: number): number {
    let result = 0  // Initialize result to store the sum.

    // Loop through all numbers from 1 to n and accumulate the sum.
    for (let i = 0; i <= n; i++) {
      result += i
    }

    // Return the calculated sum.
    return result
  }
}
