/**
 * Lesson 13: Calculate S(n) = x^2 + x^4 + … + x^2n
 */
export default class Lesson13 {

  /**
   * Calculates the sum S(n) = x^2 + x^4 + … + x^2n
   *
   * @param {number} x - The base number
   * @param {number} n - The number of terms in the series
   * @return {number} - The sum of the series
   */
  solution(x: number, n: number): number {
    let result = 0 // Initialize result to accumulate the sum

    // Loop from 1 to n to calculate each term x^(2*i) and add it to the result
    for (let i = 1; i <= n; i++) {
      result += Math.pow(x, 2 * i) // Add x^(2*i) to the cumulative sum
    }

    return result // Return the computed sum
  }
}
