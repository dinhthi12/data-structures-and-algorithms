/**
 * Lesson 23: Count the number of "divisors" of the positive integer n
 */
export default class Lesson23 {

  /**
   * @param n - The number for which divisors are to be counted.
   * @return - The number of divisors of n.
   */
  solution(n: number): number {
    let count = 0;

    // Loop through all numbers from 1 to the square root of n
    for (let i = 1; i <= Math.sqrt(n); i++) {
      if (n % i === 0) {
        count += 1; // Count divisor i

        if (i !== n / i) {
          count += 1; // Count paired divisor n / i if it's not the same as i
        }
      }
    }

    return count;
  }
}

