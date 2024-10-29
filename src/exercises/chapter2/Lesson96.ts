/**
 * Lesson 96: Write a program to input the x value and then calculate the value of the function:
 * f(x) = 2x^2 + 5x + 9 when x >= 5
 * f(x) = -2x^2 + 4x - 9 when x < 5
 */
export default class Lesson96 {

  /**
   * Calculates the value of f(x) based on the value of x.
   *
   * @param x - The input value
   * @returns The calculated value of f(x)
   */
  solution(x: number): number {
    if (x < 5) {
      return -2 * (x ** 2) + 4 * x - 9
    }

    return 2 * (x ** 2) + 5 * x + 9
  }
}
