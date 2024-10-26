/**
 * Lesson 90: Write a program to find the largest positive integer m such that 1 + 2 + … + m < N
 */
export default class Lesson90 {
  /**
   * Finds the largest integer m such that the sum 1 + 2 + … + m is less than n.
   * @param {number} n - The target upper limit for the sum.
   * @return {number} - The largest integer m where the sum is still less than n.
   */
  solution(n: number): number {
    let sum = 0
    let m = 0

    // Increment m until the sum is less than n
    while (sum + m + 1 < n) {
      m++
      sum += m
    }

    return m
  }
}
