import Lesson84 from '../Lesson84'

describe('Lesson84 Tests', () => {
  const lesson = new Lesson84()

  /**
   * Test case 1: Standard equation with solution
   * Equation: 2x + 4 = 0
   * Expected solution: x = -2
   */
  it('should return the correct solution for a = 2, b = 4', () => {
    const result = lesson.solution(2, 4)
    expect(result).toBe(-2)
  })

  /**
   * Test case 2: Equation with no solution (a = 0)
   * Equation: 0x + 4 = 0
   * Expected solution: null (no solution)
   */
  it('should return null when a = 0 and b != 0', () => {
    const result = lesson.solution(0, 4)
    expect(result).toBeNull()
  })

  /**
   * Test case 3: Infinite solutions (a = 0, b = 0)
   * Equation: 0x + 0 = 0
   * Expected solution: null (indeterminate solution, treated as no solution)
   */
  it('should return null when a = 0 and b = 0', () => {
    const result = lesson.solution(0, 0)
    expect(result).toBeNull()
  })

  /**
   * Test case 4: Equation with negative coefficients
   * Equation: -3x + 6 = 0
   * Expected solution: x = 2
   */
  it('should return the correct solution for a = -3, b = 6', () => {
    const result = lesson.solution(-3, 6)
    expect(result).toBe(2)
  })

})
