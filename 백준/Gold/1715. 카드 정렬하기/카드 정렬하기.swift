var heap = [0] // 1-based-index
let N = Int(readLine()!)!
for _ in 0..<N { push(Int(readLine()!)!) }

var answer = 0
while(heap.count > 2) {
    let a = pop()
    let b = pop()
    answer += a+b
    push(a+b)
}
print(answer)

func push(_ n:Int) {
    heap.append(n)
    if(heap.count == 2) { return }

    var idx = heap.count-1
    while(idx > 1) {
        let parent = idx/2
        if(heap[parent] <= heap[idx]) { break }
        heap.swapAt(parent, idx)
        idx = parent
    }
}

func pop() -> Int {
    if(heap.count == 1) { return 0 }

    let deleted = heap[1]
    heap[1] = heap[heap.count-1]
    heap.removeLast()

    var idx = 1
    while(idx*2 < heap.count) {
        let left = idx*2, right = idx*2+1
        var minIdx = left
        if(right < heap.count && heap[right] < heap[left]) { minIdx = right }

        if(heap[idx] < heap[minIdx]) { break }
        heap.swapAt(idx,minIdx)
        idx = minIdx
    }
    return deleted
}