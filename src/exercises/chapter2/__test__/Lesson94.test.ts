import Lesson94 from '../Lesson94'

describe('Lesson94 Solution', () => {
  let lesson: Lesson94

  beforeEach(() => {
    lesson = new Lesson94()
  })

  test('should return all odd numbers less than 100 except 5, 7, and 93', () => {
    const output = lesson.solution()

    // Expected output array of all odd numbers under 100 excluding 5, 7, and 93
    const expectedOutput: number[] = []
    for (let i = 1; i < 100; i += 2) {
      if (i !== 5 && i !== 7 && i !== 93) {
        expectedOutput.push(i)
      }
    }

    // Verify the output matches the expected array
    expect(output).toEqual(expectedOutput)
  })
})
