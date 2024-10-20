import Lesson8 from '../Lesson8'

describe('Lesson8: Sum of Series 1/2 + 3/4 + 5/6 + … + (2n+1)/(2n+2)', () => {
  const lesson = new Lesson8()

  it('should return 0 for n = 0', () => {
    expect(lesson.solution(0)).toBe(0)
  })

  it('should return 0.75 for n = 1', () => {
    expect(lesson.solution(1)).toBe(0.75)
  })

  it('should return 1.5833333333333335 for n = 2 (approximately)', () => {
    expect(lesson.solution(2)).toBeCloseTo(1.5833333333333335, 5)
  })

  it('should return 2.4583333333333335 for n = 3 (approximately)', () => {
    expect(lesson.solution(3)).toBeCloseTo(2.4583333333333335, 5)
  })

  it('should return 4.275 for n = 4 (approximately)', () => {
    expect(lesson.solution(5)).toBeCloseTo(4.275, 5)
  })

  it('should return 3.3583333333333334 for n = 5 (approximately)', () => {
    expect(lesson.solution(4)).toBeCloseTo(3.3583333333333334, 5)
  })
})
