import Lesson87 from '../Lesson87'

describe('Lesson87: Find the smallest integer n such that 1 + 2 + ... + n > 10000', () => {
  const lesson = new Lesson87()

  it('should return the smallest n such that the sum exceeds 10000', () => {
     // The correct value is 141
    expect(lesson.solution()).toBe(141)
  })
})
