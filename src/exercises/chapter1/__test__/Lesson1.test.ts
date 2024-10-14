import { Lesson1 } from '../Lesson1'

describe('Sum from 1 to n', () => {
  const lesson1 = new Lesson1()

  it('should return 55 for n = 10', () => {
    expect(lesson1.solution(10)).toBe(55)
  })

  it('should return 1 for n = 1', () => {
    expect(lesson1.solution(1)).toBe(1)
  })

  it('should return 15 for n = 5', () => {
    expect(lesson1.solution(5)).toBe(15)
  })

  it('should return 0 for n = 0', () => {
    expect(lesson1.solution(0)).toBe(0)
  })

  it('should return 5050 for n = 100', () => {
    expect(lesson1.solution(100)).toBe(5050)
  })
})
