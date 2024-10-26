import Lesson88 from '../Lesson88'

describe('Lesson88: Output all characters from A to Z', () => {
  const lesson = new Lesson88()
  const consoleSpy = jest.spyOn(console, 'log').mockImplementation()

  afterEach(() => {
    consoleSpy.mockClear()
  })

  afterAll(() => {
    consoleSpy.mockRestore()
  })

  it('should output all characters from A to Z', () => {
    lesson.solution()

    // Expect 26 calls to console.log, one for each letter from A to Z
    expect(consoleSpy).toHaveBeenCalledTimes(26)

    // Verify each letter from A to Z is output in the correct order
    const alphabet = Array.from({ length: 26 }, (_, i) => String.fromCharCode(65 + i))
    alphabet.forEach((letter, index) => {
      expect(consoleSpy).toHaveBeenNthCalledWith(index + 1, letter + ' ')
    })
  })
})
