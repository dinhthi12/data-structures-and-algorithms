/**
 * Lesson 14: Calculate S(n) = x + x^3 + x^5 + … + x^(2n + 1)
 */
export default class Lesson14 {

  /**
   * Calculates the sum S(n) = x + x^3 + x^5 + ... + x^(2n + 1)
   *
   * @param {number} x - The base number
   * @param {number} n - The number of terms in the series
   * @return {number} - The sum of the series
   */
  solution(x: number, n: number): number {
    let result = 0 // Initialize result to accumulate the sum

    // Loop from 0 to n to calculate each term x^(2*i + 1) and add it to the result
    for (let i = 0; i <= n; i++) {
      result += Math.pow(x, 2 * i + 1) // Add x^(2*i + 1) to the cumulative sum
    }

    return result // Return the computed sum
  }
}
