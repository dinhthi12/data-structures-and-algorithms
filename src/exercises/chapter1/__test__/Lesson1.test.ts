import Lesson1 from '../Lesson1'

/**
 * Test suite for the Lesson1 class which calculates the sum S(n) = 1 + 2 + ... + n.
 */
describe('Sum from 1 to n', () => {
  // Create an instance of the Lesson1 class to use in the test cases.
  const lesson1 = new Lesson1()

  /**
   * Test case to check if the sum for n = 10 is calculated correctly.
   * The expected result is 55 (1 + 2 + ... + 10).
   */
  it('should return 55 for n = 10', () => {
    expect(lesson1.solution(10)).toBe(55)
  })

  /**
   * Test case to check if the sum for n = 1 is calculated correctly.
   * The expected result is 1.
   */
  it('should return 1 for n = 1', () => {
    expect(lesson1.solution(1)).toBe(1)
  })

  /**
   * Test case to check if the sum for n = 5 is calculated correctly.
   * The expected result is 15 (1 + 2 + 3 + 4 + 5).
   */
  it('should return 15 for n = 5', () => {
    expect(lesson1.solution(5)).toBe(15)
  })

  /**
   * Test case to check if the sum for n = 0 is calculated correctly.
   * The expected result is 0.
   */
  it('should return 0 for n = 0', () => {
    expect(lesson1.solution(0)).toBe(0)
  })

  /**
   * Test case to check if the sum for n = 100 is calculated correctly.
   * The expected result is 5050 (the sum of numbers from 1 to 100).
   */
  it('should return 5050 for n = 100', () => {
    expect(lesson1.solution(100)).toBe(5050)
  });
})
