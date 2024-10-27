import Lesson5 from '../Lesson5'

describe('Lesson5 Tests', () => {
  let lesson: Lesson5

  beforeEach(() => {
    lesson = new Lesson5()
  })

  /**
   * Test case 1: Test the series with n = 1
   * Expected result: 1
   */
  it('should return 1 for n = 1', () => {
    const result = lesson.solution(1)
    expect(result).toBeCloseTo(1.0)
  })

  /**
   * Test case 2: Test the series with n = 2
   * Expected result: 1 + 1/3
   */
  it('should return the correct sum for n = 2', () => {
    const result = lesson.solution(2);
    expect(result).toBeCloseTo(1 + 1/3, 4) // Rounding to 4 decimal places
  })

  /**
   * Test case 3: Test the series with n = 5
   * Expected result: S(5) = 1 + 1/3 + 1/5 + 1/7 + 1/9
   */
  it('should return the correct sum for n = 5', () => {
    const result = lesson.solution(5)
    expect(result).toBeCloseTo(1 + 1/3 + 1/5 + 1/7 + 1/9, 4) // Rounding to 4 decimal places
  })

  /**
   * Test case 4: Test the series with n = 10
   * Expected result: S(10) = 1 + 1/3 + … + 1/21
   */
  it('should return the correct sum for n = 10', () => {
    const result = lesson.solution(10)
    expect(result).toBeCloseTo(2.1332555301595546, 4)
  })
})
