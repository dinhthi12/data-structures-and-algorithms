import LinkedListNode from '../LinkedListNode';
import { getDecimalValue } from '../exercises/ConvertBinaryToInteger';
describe('getDecimalValue', () => {
  test('should convert binary 101 to decimal 5', () => {
    // Binary: 101 -> Decimal: 5
    const node3 = new LinkedListNode(1, null); // Last node with value 1
    const node2 = new LinkedListNode(0, node3); // Second node with value 0
    const node1 = new LinkedListNode(1, node2); // First node with value 1

    expect(getDecimalValue(node1)).toBe(5); // Expected output is 5
  });

  test('should convert binary 111 to decimal 7', () => {
    // Binary: 111 -> Decimal: 7
    const node3 = new LinkedListNode(1, null); // Last node with value 1
    const node2 = new LinkedListNode(1, node3); // Second node with value 1
    const node1 = new LinkedListNode(1, node2); // First node with value 1

    expect(getDecimalValue(node1)).toBe(7); // Expected output is 7
  });

  test('should convert binary 0 to decimal 0', () => {
    // Binary: 0 -> Decimal: 0
    const node1 = new LinkedListNode(0, null); // Single node with value 0

    expect(getDecimalValue(node1)).toBe(0); // Expected output is 0
  });

  test('should convert binary 1 to decimal 1', () => {
    // Binary: 1 -> Decimal: 1
    const node1 = new LinkedListNode(1, null); // Single node with value 1

    expect(getDecimalValue(node1)).toBe(1); // Expected output is 1
  });

  test('should convert binary 10 to decimal 2', () => {
    // Binary: 10 -> Decimal: 2
    const node2 = new LinkedListNode(0, null); // Last node with value 0
    const node1 = new LinkedListNode(1, node2); // First node with value 1

    expect(getDecimalValue(node1)).toBe(2); // Expected output is 2
  });

  test('should return 0 when linked list is empty', () => {
    // Null list should return 0
    const head = null;

    expect(getDecimalValue(head)).toBe(0); // Expected output is 0
  });
});
