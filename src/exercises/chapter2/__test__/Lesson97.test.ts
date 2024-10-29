import Lesson97 from '../Lesson97'

describe('Lesson97 solution', () => {
  let lesson: Lesson97

  beforeEach(() => {
    lesson = new Lesson97()
  })

  test('should identify an equilateral triangle', () => {
    expect(lesson.solution(3, 3, 3)).toBe('Equilateral triangle')
  })

  test('should identify an isosceles triangle', () => {
    expect(lesson.solution(3, 3, 4)).toBe('Isosceles triangle')
    expect(lesson.solution(5, 4, 5)).toBe('Isosceles triangle')
  })

  test('should identify a scalene triangle', () => {
    expect(lesson.solution(3, 4, 6)).toBe('Scalene triangle')
  })

  test('should identify a right-angled triangle', () => {
    expect(lesson.solution(3, 4, 5)).toBe('Right-angled triangle') // 3^2 + 4^2 = 5^2
    expect(lesson.solution(5, 12, 13)).toBe('Right-angled triangle') // 5^2 + 12^2 = 13^2
  })

  test('should identify an isosceles right-angled triangle', () => {
    expect(lesson.solution(1, 1, Math.sqrt(2))).toBe('Isosceles Right-angled triangle') // 1, 1, √2
  })

  test('should identify an invalid triangle', () => {
    expect(lesson.solution(1, 2, 3)).toBe('Invalid triangle') // 1 + 2 = 3
    expect(lesson.solution(0, 4, 5)).toBe('Invalid triangle') // 0 is not valid
  })
})
