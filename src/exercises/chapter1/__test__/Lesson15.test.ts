import Lesson15 from '../Lesson15'

describe('Lesson15 Solution', () => {
  let lesson: Lesson15

  beforeEach(() => {
    lesson = new Lesson15()
  })

  test('should return 1 for n = 1', () => {
    expect(lesson.solution(1)).toBeCloseTo(1, 5)
  })

  test('should return approximately 1.33333 for n = 2', () => {
    expect(lesson.solution(2)).toBeCloseTo(1.33333, 5) // 1 + 1/3
  })

  test('should return approximately 1.5 for n = 3', () => {
    expect(lesson.solution(3)).toBeCloseTo(1.5, 5) // 1 + 1/3 + 1/6
  })

  test('should return approximately 1.6 for n = 4', () => {
    expect(lesson.solution(4)).toBeCloseTo(1.6, 5) // 1 + 1/3 + 1/6 + 1/10
  })

  test('should return approximately 1.6666666666666667 for n = 5', () => {
    expect(lesson.solution(5)).toBeCloseTo(1.6666666666666667, 5) // 1 + 1/3 + 1/6 + 1/10 + 1/15
  });
})
