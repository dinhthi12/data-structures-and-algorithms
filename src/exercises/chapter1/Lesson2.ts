/**
 * Lesson 2: Calculate S(n) = 1^2 + 2^2 + ... + n^2
 */
export default class Lesson2 {
  /**
   * This method calculates the sum of squares from 1 to n.
   * @param n - the number up to which squares are calculated
   * @returns the sum of squares from 1 to n
   */
  solution(n: number): number {
    let result = 0

    // Loop through all numbers from 1 to n
    for (let i = 1; i <= n; i++) {
      // Add the square of the current number to the result
      result += i * i
    }

    return result
  }
}
