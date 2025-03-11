/**
 * Lesson 99: Write a program to input 3 real numbers. Print those 3 numbers to the screen in ascending order using only 1 extra variable at most
 */
export default class Lesson99 {

  /**
   * Sorts three numbers in ascending order.
   *
   * @param a The first number
   * @param b The second number
   * @param c The third number
   */

  solution(a: number, b: number, c: number): void {
    let temp: number
    if (a > b) {
      temp = a
      a = b
      b = temp
    }

    if (a > c) {
      temp = a
      a = c
      c = temp
    }

    if (b > c) {
      temp = b
      b = c
      c = temp
    }

    console.log(a, b, c)

  }
}