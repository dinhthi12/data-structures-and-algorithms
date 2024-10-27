/**
 * Lesson 11: Calculate S(n) = 1 + 1*2 + 1*2*3 + … + 1*2*3*…*N
 *
 * This class provides a method to calculate the sum of factorials up to a given number `n`.
 */

export default class Lesson11 {
  /**
   * Calculates the sum of factorials from 1 up to `n`.
   *
   * For example, if n = 3, the result will be:
   * S(3) = 1 + 1*2 + 1*2*3 = 9
   *
   * @param {number} n - The upper limit for the factorial sum calculation
   * @return {number} - The sum of factorials from 1 to n
   */
  solution(n: number): number {
    let result = 0 // Variable to accumulate the final sum of factorials

    // Loop from 1 to n to calculate each factorial term and add it to the result
    for (let i = 1; i <= n; i++) {
      let factorial = 1 // Variable to calculate factorial for the current `i`

      // Inner loop to calculate factorial of `i`
      for (let j = 1; j <= i; j++) {
        factorial *= j // Multiply by each integer up to `i` to get i!
      }

      result += factorial // Add the factorial of `i` to the cumulative sum
    }

    return result // Return the computed sum of factorials up to n
  }
}
