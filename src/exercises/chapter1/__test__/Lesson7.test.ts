import Lesson7 from '../Lesson7'

describe('Lesson7: Sum of Series 1/2 + 2/3 + 3/4 + … + n/(n + 1)', () => {
  const lesson = new Lesson7()

  it('should return 0 for n = 0', () => {
    expect(lesson.solution(0)).toBe(0)
  })

  it('should return 0.5 for n = 1', () => {
    expect(lesson.solution(1)).toBe(0.5) // 1/2 = 0.5
  })

  it('should return 1.16667 for n = 2 (approximately)', () => {
    expect(lesson.solution(2)).toBeCloseTo(1.16667, 5) // 1/2 + 2/3 = 1.16667
  })

  it('should return 1.91667 for n = 3 (approximately)', () => {
    expect(lesson.solution(3)).toBeCloseTo(1.91667, 5) // 1/2 + 2/3 + 3/4 = 1.91667
  })

  it('should return 2.7 for n = 4 (approximately)', () => {
    expect(lesson.solution(4)).toBeCloseTo(2.716666666666667, 5) // 1/2 + 2/3 + 3/4 + 4/5 = 2.716666666666667
  })

  it('should return 3.55 for n = 5 (approximately)', () => {
    expect(lesson.solution(5)).toBeCloseTo(3.55, 5) // Sum for n = 5
  })
})
