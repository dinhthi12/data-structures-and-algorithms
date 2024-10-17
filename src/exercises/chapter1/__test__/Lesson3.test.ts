import Lesson3 from '../Lesson3'


describe('Lesson3 Tests', () => {
  const lesson = new Lesson3()

  /**
   * Test case 1: Test the harmonic series with n = 1
   * Expected result: 1 (since S(1) = 1)
   */
  it('should return 1 for n = 1', () => {
    const result = lesson.solution(1)
    expect(result).toBe(1)
  })

  /**
   * Test case 2: Test the harmonic series with n = 2
   * Expected result: 1 + ½ = 1.5
   */
  it('should return 1.5 for n = 2', () => {
    const result = lesson.solution(2)
    expect(result).toBeCloseTo(1.5)
  })

  /**
   * Test case 3: Test the harmonic series with n = 5
   * Expected result: 1 + ½ + 1/3 + 1/4 + 1/5
   */
  it('should return the correct sum for n = 5', () => {
    const result = lesson.solution(5)
    expect(result).toBeCloseTo(2.2833, 4) // Rounding to 4 decimal places
  })

  /**
   * Test case 4: Test the harmonic series with n = 10
   * Expected result: S(10) = 1 + ½ + 1/3 + ... + 1/10
   */
  it('should return the correct sum for n = 10', () => {
    const result = lesson.solution(10)
    expect(result).toBeCloseTo(2.9289682539682538, 4) // Rounding to 4 decimal places
  })
})
