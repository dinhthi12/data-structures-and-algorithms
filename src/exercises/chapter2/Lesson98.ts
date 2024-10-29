/**
 * Lesson 98: Create a program to solve the system: ax + by = c
 * dx + ey = f.
 */
export default class Lesson98 {

  /**
   * Solves the system of linear equations and returns the values of x and y.
   *
   * @param a - Coefficient of x in the first equation
   * @param b - Coefficient of y in the first equation
   * @param c - Constant term of the first equation
   * @param d - Coefficient of x in the second equation
   * @param e - Coefficient of y in the second equation
   * @param f - Constant term of the second equation
   * @returns An object containing the values of x and y, or a message if there is no solution.
   */
  solution(a: number, b: number, c: number, d: number, e: number, f: number): { x: number; y: number } | string {
    // Calculate the denominator for checking if the system has a unique solution
    const denominator = a * e - b * d

    // Check if the system has no solution or infinite solutions
    if (denominator === 0) {
      return 'No unique solution exists (either no solution or infinite solutions).'
    }

    // Calculate x and y using Cramer's rule
    const x = (c * e - b * f) / denominator
    const y = (a * f - c * d) / denominator

    return { x, y }
  }
}
