var heap = [-1] // 1-based index

let N = Int(readLine()!)!
for _ in 0..<N {
    let x = Int(readLine()!)!
    if x == 0 {
        print(root())
        remove()
    } else {
        push(x)
    }
}

func push(_ n: Int) {
    heap.append(n)

    var idx = heap.count - 1
    while idx > 1 {
        let parent = idx / 2
        if heap[parent] <= heap[idx] { break }
        heap.swapAt(parent, idx)
        idx = parent
    }
}

func root() -> Int {
    return heap.count > 1 ? heap[1] : 0
}

func remove() {
    if heap.count <= 1 { return } // 빈 힙 예외 처리

    heap[1] = heap[heap.count - 1] // 마지막 요소를 루트에 복사
    heap.removeLast() // 마지막 요소 제거

    var idx = 1
    while 2 * idx < heap.count {
        let left = 2 * idx
        let right = left + 1
        var minIdx = left

        if right < heap.count, heap[right] < heap[left] {
            minIdx = right
        }

        if heap[idx] <= heap[minIdx] { break }
        heap.swapAt(idx, minIdx)
        idx = minIdx
    }
}