/**
 * Lesson 93: Write a program to check whether a number is prime or not
 */
export default class Lesson93 {

  /**
   *
   * @param
   * @return
   */

    solution(n: number): boolean {
      if (n <= 1) {
        return false
      }

      for (let i = 2; i <= Math.sqrt(n); i++) {
        if (n % i === 0) {
          return false // n is not prime if divisible by i
        }
      }

      return true // n is prime if no divisors were found
    }
}
