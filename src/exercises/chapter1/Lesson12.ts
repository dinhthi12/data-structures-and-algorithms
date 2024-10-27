/**
 * Lesson 12: Calculate S(n) = x + x^2 + x^3 + … + x^n
 */

export default class Lesson12 {
  /**
   * Calculates the sum S(n) = x + x^2 + x^3 + … + x^n
   *
   * @param {number} x - The base number
   * @param {number} n - The highest exponent
   * @return {number} - The sum of the series
   */
  solution(x: number, n: number): number {
    let result = 0

    // Loop from 1 to n to calculate each power of x and add it to the result
    for (let i = 1; i <= n; i++) {
      result += Math.pow(x, i) // Add x^i to the cumulative sum
    }

    return result // Return the computed sum
  }
}
