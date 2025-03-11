/**
 * Lesson 22: Calculate the product of all "divisors" of the positive integer n
 */
export default class Lesson22 {

  /**
   * @param n - The number for which divisors are to be calculated.
   * @return - The product of all divisors of n.
   */
  solution(n: number): number {
    let product = 1

    // Loop through all numbers from 1 to the square root of n
    for (let i = 1; i <= Math.sqrt(n); i++) {
      if (n % i === 0) {
        product *= i  // Multiply by the divisor i

        if (i !== n / i) {
          product *= n / i  // Multiply by the paired divisor n / i
        }
      }
    }

    return product
  }
}
