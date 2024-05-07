def solution(sizes):
    widths = []
    heights = []
    
    for size in sizes:
        if size[0] < size[1]:
            size[0], size[1] = size[1], size[0]
        widths.append(size[0])
        heights.append(size[1])
    
    return max(widths)*max(heights)