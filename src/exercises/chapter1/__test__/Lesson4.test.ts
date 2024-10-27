import Lesson4 from '../Lesson4'

describe('Lesson4 Tests', () => {
  let lesson: Lesson4

  beforeEach(() => {
    lesson = new Lesson4()
  })

  /**
   * Test case 1: Test the series with n = 1
   * Expected result: ½
   */
  it('should return 0.5 for n = 1', () => {
    const result = lesson.solution(1)
    expect(result).toBeCloseTo(0.5)
  })

  /**
   * Test case 2: Test the series with n = 2
   * Expected result: ½ + ¼ = 0.75
   */
  it('should return 0.75 for n = 2', () => {
    const result = lesson.solution(2)
    expect(result).toBeCloseTo(0.75)
  })

  /**
   * Test case 3: Test the series with n = 5
   * Expected result: ½ + ¼ + ⅙ + ⅛ + 1/10
   */
  it('should return the correct sum for n = 5', () => {
    const result = lesson.solution(5)
    expect(result).toBeCloseTo(1.1416666666666666, 4) // Rounding to 4 decimal places
  })

  /**
   * Test case 4: Test the series with n = 10
   * Expected result: S(10) = ½ + ¼ + … + 1/20
   */
  it('should return the correct sum for n = 10', () => {
    const result = lesson.solution(10)
    expect(result).toBeCloseTo(1.4644841269841269, 4) // Rounding to 4 decimal places
  })
})
