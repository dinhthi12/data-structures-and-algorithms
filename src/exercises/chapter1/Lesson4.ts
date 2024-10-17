/**
 * Lesson 4: Calculate S(n) = ½ + ¼ + … + 1/2n
 */
export default class Lesson4 {

  /**
   * Calculates the sum of the series S(n) = ½ + ¼ + … + 1/2n.
   *
   * @param {number} n - The upper limit of the series.
   * @return {number} The calculated sum S(n).
   */
  solution(n: number): number {
    // Initialize the result variable to store the sum.
    let result = 0

    // Iterate through the numbers from 1 to n and add 1/(2*i) to the result.
    for (let i = 1; i <= n; i++) {
      result += 1 / (2 * i)
    }

    // Return the final calculated result.
    return result
  }
}
