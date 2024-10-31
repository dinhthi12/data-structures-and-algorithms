export default class Lesson100 {
  /**
   * Solves a quadratic equation ax^2 + bx + c = 0
   *
   * @param a Coefficient of x^2
   * @param b Coefficient of x
   * @param c Constant term
   * @returns Roots of the equation as an array. Returns complex roots if they exist.
   */
  solution(a: number, b: number, c: number): (number | string)[] {
    if (a === 0) {
      // Linear equation bx + c = 0
      if (b === 0) {
        return c === 0 ? ['Infinite solutions'] : [] // No solution if only constant term is non-zero
      }
      return [-c / b]
    }

    const discriminant = b * b - 4 * a * c
    let root1: number, root2: number

    if (discriminant > 0) {
      // Two distinct real roots
      root1 = (-b + Math.sqrt(discriminant)) / (2 * a)
      root2 = (-b - Math.sqrt(discriminant)) / (2 * a)
      return [root1, root2]
    } else if (discriminant === 0) {
      // One real double root
      root1 = -b / (2 * a)
      return [root1]
    } else {
      // Complex roots
      const realPart = (-b / (2 * a)).toFixed(2)
      const imagPart = (Math.sqrt(-discriminant) / (2 * a)).toFixed(2)
      return [`${realPart} + ${imagPart}i`, `${realPart} - ${imagPart}i`]
    }
  }
}
