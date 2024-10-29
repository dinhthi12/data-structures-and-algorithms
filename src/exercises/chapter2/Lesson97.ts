/**
 * Lesson 97: Write a program to input 3 sides of a triangle and indicate the type of triangle it is.
 */
export default class Lesson97 {

  /**
   * Determines the type of triangle based on the lengths of its three sides.
   *
   * @param a - Length of the first side
   * @param b - Length of the second side
   * @param c - Length of the third side
   * @returns {string} The type of triangle: 'Equilateral', 'Isosceles', 'Scalene', 'Right-angled', 'Isosceles Right-angled', 'Equiangular', or 'Invalid'.
   */
  solution(a: number, b: number, c: number): string {
    // First, check if the sides form a valid triangle
    if (a + b <= c || a + c <= b || b + c <= a) {
      return 'Invalid triangle'
    }

    // Check for equilateral triangle (all sides are equal)
    if (a === b && b === c) {
      return 'Equilateral triangle'
    }

    // Check for right-angled triangle (using the Pythagorean theorem)
    const sides = [a, b, c].sort((x, y) => x - y) // Sort sides in ascending order
    const [side1, side2, hypotenuse] = sides

// Using a small epsilon to account for floating-point precision issues
const epsilon = 1e-10;
const isRightAngled = Math.abs(side1 ** 2 + side2 ** 2 - hypotenuse ** 2) < epsilon

    if (isRightAngled) {
      // Check for isosceles right triangle (two sides equal and one side as hypotenuse)
      if (side1 === side2) {
        return 'Isosceles Right-angled triangle'
      }
      return 'Right-angled triangle'
    }

    // Check for isosceles triangle (two sides are equal)
    if (a === b || b === c || a === c) {
      return 'Isosceles triangle'
    }

    // If no sides are equal, it's a scalene triangle
    return 'Scalene triangle'
  }
}
