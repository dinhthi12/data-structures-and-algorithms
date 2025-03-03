import Lesson22 from '../Lesson22';  // Import your Lesson22 class

describe('Lesson22', () => {

  let lesson22: Lesson22;

  beforeEach(() => {
    lesson22 = new Lesson22();
  });

  // Test case 1: Product of divisors of 6 (1 * 2 * 3 * 6 = 36)
  test('should calculate the product of divisors of 6 correctly', () => {
    const result = lesson22.solution(6);
    expect(result).toBe(36);
  });

  // Test case 2: Product of divisors of 1 (only 1, so the product is 1)
  test('should calculate the product of divisors of 1 correctly', () => {
    const result = lesson22.solution(1);
    expect(result).toBe(1);
  });

  // Test case 3: Product of divisors of 12 (1 * 2 * 3 * 4 * 6 * 12 = 1728)
  test('should calculate the product of divisors of 12 correctly', () => {
    const result = lesson22.solution(12);
    expect(result).toBe(1728);
  });

  // Test case 4: Product of divisors of a prime number (e.g., 7: 1 * 7 = 7)
  test('should calculate the product of divisors of a prime number correctly', () => {
    const result = lesson22.solution(7);
    expect(result).toBe(7);
  });

  // Test case 5: Product of divisors of 28 (1 * 2 * 4 * 7 * 14 * 28 = 21952)
  test('should calculate the product of divisors of 28 correctly', () => {
    const result = lesson22.solution(28);
    expect(result).toBe(21952);
  });

  // Test case 6: Product of divisors of 100 (1 * 2 * 4 * 5 * 10 * 20 * 25 * 50 * 100 = 1000000000)
  test('should calculate the product of divisors of 100 correctly', () => {
    const result = lesson22.solution(100);
    expect(result).toBe(1000000000);
  });

});
