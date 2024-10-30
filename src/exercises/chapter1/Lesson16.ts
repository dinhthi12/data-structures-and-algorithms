/**
 * Lesson 16: Calculate S(n) = x + x^2/(1 + 2) + x^3/(1 + 2 + 3) + … + x^n/(1 + 2 + 3 + …. + N)
 */
export default class Lesson16 {
  /**
   * Calculates the sum S(n) based on the series:
   * S(n) = x + x^2 / (1 + 2) + x^3 / (1 + 2 + 3) + ... + x^n / (1 + 2 + 3 + ... + n)
   *
   * @param {number} x - The base number to be raised to the power in each term
   * @param {number} n - The number of terms in the series
   * @return {number} - The calculated sum of the series
   */
  solution(x: number, n: number): number {
    let result = 0

    // Loop to calculate each term in the series up to n terms
    for (let i = 1; i <= n; i++) { // Corrected to `i <= n` to include the x^n term
      // Sum of numbers from 1 to i (1 + 2 + ... + i)
      const sum = (i * (i + 1)) / 2

      // Add the term x^i / sum to the result
      result += Math.pow(x, i) / sum
    }
    return result
  }
}
