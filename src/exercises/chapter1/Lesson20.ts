/**
 * Lesson 20: List all the "divisors" of the positive integer n
 */
export default class Lesson20 {

  /**
   * Lists all divisors of the positive integer n
   * @param n - The positive integer whose divisors we want to find
   * @returns An array of divisors of n
   */
  solution(n: number): number[] {
    const divisors: number[] = [];
    for (let i = 1; i <= n; i++) {
      if (n % i === 0) { // Check if i is a divisor of n
        divisors.push(i)
      }
    }
    return divisors
  }
}
