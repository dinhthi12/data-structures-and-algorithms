import Lesson6 from '../Lesson6'

describe('Lesson6: Sum of Series 1/(1×2) + 1/(2×3) + … + 1/(n×(n + 1))', () => {
  const lesson = new Lesson6()

  it('should return 0 for n = 0', () => {
    expect(lesson.solution(0)).toBe(0)
  })

  it('should return 0.5 for n = 1', () => {
    expect(lesson.solution(1)).toBe(0.5) // 1/(1×2) = 0.5
  })

  it('should return 0.66666666667 for n = 2 (approximately)', () => {
    expect(lesson.solution(2)).toBeCloseTo(0.6666666666666666, 5)
  })

  it('should return 0.75 for n = 3 (approximately)', () => {
    expect(lesson.solution(3)).toBeCloseTo(0.75, 5)
  })

  it('should return 0.8 for n = 4 (approximately)', () => {
    expect(lesson.solution(4)).toBeCloseTo(0.8, 5)
  })

  it('should return 0.8333333333333334 for n = 5 (approximately)', () => {
    expect(lesson.solution(5)).toBeCloseTo(0.8333333333333334, 5)
  })
})
