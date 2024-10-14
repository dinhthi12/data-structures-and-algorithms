import LinkedListNode from '../LinkedListNode';

describe('LinkedListNode', () => {
  it('should create a list node with a value', () => {
    const node = new LinkedListNode<number>(1); // Create a node with a numeric value

    expect(node.value).toBe(1); // Check if the value is correctly assigned
    expect(node.next).toBeNull(); // Check if the next node is null
  });

  it('should create a list node with an object as the value', () => {
    const nodeValue = { value: 1, key: 'test' }; // Object value
    const node = new LinkedListNode<typeof nodeValue>(nodeValue); // Create a node with an object as a value

    expect(node.value.value).toBe(1); // Check if the object properties are correctly assigned
    expect(node.value.key).toBe('test');
    expect(node.next).toBeNull(); // Ensure next node is null
  });

  it('should link nodes together', () => {
    const node2 = new LinkedListNode<number>(2); // Create second node with value 2
    const node1 = new LinkedListNode<number>(1, node2); // Link node1 to node2

    expect(node1.next).toBeDefined(); // Ensure that node1 has a next node
    expect(node2.next).toBeNull(); // node2 is the last node, so next should be null
    expect(node1.value).toBe(1); // Check node1's value
    expect(node1.next!.value).toBe(2); // Check if node1's next node has the value 2
  });

  it('should convert node to string', () => {
    const node = new LinkedListNode<number>(1); // Create a node with value 1

    expect(node.toString()).toBe('1'); // Default string conversion should return '1'

    node.value = 'string value' as any; // Change value to a string
    expect(node.toString()).toBe('string value'); // Check if toString reflects the new value
  });

  it('should convert node to string with custom stringified', () => {
    const nodeValue = { value: 1, key: 'test' }; // Create a node with object value
    const node = new LinkedListNode<typeof nodeValue>(nodeValue);

    // Custom stringified function
    const toStringCallback = (value: typeof nodeValue) =>
      `value: ${value.value}, key: ${value.key}`;

    expect(node.toString(toStringCallback)).toBe('value: 1, key: test'); // Check custom toString result
  });
});
