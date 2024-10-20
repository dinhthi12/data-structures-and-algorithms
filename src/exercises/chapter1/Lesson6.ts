/**
 * Lesson 6: Calculate S(n) = 1/(1×2) + 1/(2×3) + … + 1/(n×(n + 1))
 */
export default class Lesson6 {

  /**
   * Calculates the sum S(n) = 1/(1×2) + 1/(2×3) + … + 1/(n×(n + 1)).
   * @param {number} n - The upper limit number to calculate the sum for.
   * @return {number} - The sum of the series for the given n.
   */
  solution(n: number): number {
    // Initialize result to accumulate the sum
    let result = 0

    // Loop through all numbers from 1 to n and accumulate the sum of 1 / (i * (i + 1))
    for (let i = 1; i <= n; i++) {
      result += 1 / (i * (i + 1))
    }

    // Return the calculated sum
    return result
  }
}
