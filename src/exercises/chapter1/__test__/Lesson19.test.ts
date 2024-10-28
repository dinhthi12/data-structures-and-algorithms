import Lesson19 from '../Lesson19'

describe('Lesson19 Solution', () => {
  let lesson: Lesson19

  beforeEach(() => {
    lesson = new Lesson19()
  })

  test('should return 1 for x = 0, n = 0', () => {
    expect(lesson.solution(0, 0)).toBeCloseTo(1, 5) // S(0) = 1
  })

  test('should return approximately 2.1666666666666665 for x = 1, n = 1', () => {
    expect(lesson.solution(1, 1)).toBeCloseTo(2.1666666666666665, 5) // S(1) = 1 + 1 + 0 = 2
  })

  test('should return approximately 2.175 for x = 1, n = 2', () => {
    expect(lesson.solution(1, 2)).toBeCloseTo(2.175, 5) // S(2) = 1 + 1 + 0.16667
  })

  test('should return approximately 2.1751984126984127 for x = 1, n = 3', () => {
    expect(lesson.solution(1, 3)).toBeCloseTo(2.1751984126984127, 5) // S(3) = 1 + 1 + 0.16667 + 0.00833
  })

  test('should return approximately 4.6 for x = 2, n = 2', () => {
    expect(lesson.solution(2, 2)).toBeCloseTo(4.6, 5) // S(2) = 1 + 2 + 0.66667
  })

  test('should return approximately 4.625396825396825 for x = 2, n = 3', () => {
    expect(lesson.solution(2, 3)).toBeCloseTo(4.625396825396825, 5) // S(3) = 1 + 2 + 0.66667 + 0.03333
  })
})
