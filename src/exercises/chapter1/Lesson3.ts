/**
 * Lesson 3: Calculate S(n) = 1 + ½ + 1/3 + … + 1/n
 */
export default class Lesson3 {

  /**
   * Calculates the sum of the harmonic series from 1 to n.
   *
   * @param {number} n - The upper limit of the harmonic series.
   * @return {number} The calculated sum S(n) = 1 + ½ + 1/3 + … + 1/n.
   */
  solution(n: number): number {
    // Initialize the result variable to store the sum.
    let result = 0;

    // Iterate through the numbers from 1 to n and add the inverse of each number to the result.
    for(let i = 1; i <= n; i++){
      result += 1 / i;
    }

    // Return the final calculated result.
    return result;
  }
}
