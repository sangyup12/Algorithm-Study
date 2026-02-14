struct Queue<T> {
    private var queue: [T?] = []
    private var head: Int = 0
    
    public var count: Int {
        return queue.count - head
    }
    
    public mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    public mutating func dequeue() -> T? {
        guard head < queue.count, let element = queue[head] else { return nil }
        queue[head] = nil
        head += 1
        
        if head > 100000 {
            queue.removeFirst(head)
            head = 0
        }
        return element
    }
}

let N = Int(readLine()!)!
var card = Queue<Int>()

for i in 1...N {
    card.enqueue(i)
}

while card.count > 1 {
    card.dequeue()     
    if let move = card.dequeue() {
        card.enqueue(move) 
    }
}

print(card.dequeue()!)