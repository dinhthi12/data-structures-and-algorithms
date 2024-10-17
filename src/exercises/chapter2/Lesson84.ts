/**
 * Lesson 84: Solve the first-order equation ax + b = 0.
 */
export default class Lesson84 {

  /**
   * Solves the equation ax + b = 0 for x.
   *
   * @param {number} a - Coefficient of x.
   * @param {number} b - Constant term.
   * @return {number | null} The solution for x, or null if the equation has no solution (a = 0).
   */
  solution(a: number, b: number): number | null {
    if (a === 0) {
      // If a = 0 and b != 0, the equation has no solution.
      // If a = 0 and b = 0, the equation is valid for all x (infinite solutions).
      return null // Returning null to indicate no valid solution.
    } else {
      // Solving for x: ax + b = 0 => x = -b/a
      return -b / a
    }
  }
}
