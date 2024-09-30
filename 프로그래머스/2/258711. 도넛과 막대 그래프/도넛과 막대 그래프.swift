import Foundation

func solution(_ edges:[[Int]]) -> [Int] {
    // 도넛 모양 그래프 : n개의 정점 / n개의 간선
    // 막대 모양 그래프 : n개의 정점 / n-1개의 간선
    // 8자 모양 그래프 : 2n+1개의 정점 / 2n+2개의 간선
    
    // 구해야 하는 것 : 생성한 정점의 번호, 도넛-막대-8자 순으로 각 그래프의 개수
    
    // 1. 노드 별 나가고 들어오는 간선 개수 구하기
    var dict:[Int:[Int]] = [:] // 노드 값:[나가는 간선 개수, 들어오는 간선 개수]
    for edge in edges {
        if let _ = dict[edge[0]] { dict[edge[0]]![0] += 1 } 
        else { dict[edge[0]] = [1,0] }

        if let _ = dict[edge[1]] { dict[edge[1]]![1] += 1 } 
        else { dict[edge[1]] = [0,1] }
    }
    
    // 2. 정점과 간선 개수 정보 딕셔너리 돌면서 아래의 규칙에 따라 생성 정점 및 그래프 개수 파악
    // * 나가는 간선이 2개 이상 & 들어오는 간선 0개 -> 생성한 정점
    // * 나가는 간선 0개 & 들어오는 간선 1개인 노드의 개수 : 막대 모양 그래프의 개수
    // * 나가는 간선 2개 이상 & 들어오는 간선 2개 이상인 노드의 개수 : 8자 모양 그래프의 개수
    // * (생성한 정점이 가지는 간선 개수) - (막대 모양 그래프의 개수) - (8자 모양 그래프의 개수) : 도넛 모양 그래프의 개수
    
    var answer = [0,0,0,0] // 생성한 정점, 도넛-막대-8자 순으로 각 그래프의 개수
    for key in dict.keys {
        if (dict[key]![0] > 1 && dict[key]![1] == 0) { answer[0] = key }
        else if (dict[key]![0] == 0 && dict[key]![1] > 0) { answer[2] += 1 }
        else if (dict[key]![0] > 1 && dict[key]![1] > 1) { answer[3] += 1 }
    }
    answer[1] = (dict[answer[0]]![0] + dict[answer[0]]![1]) - answer[2] - answer[3]
    
    return answer
}