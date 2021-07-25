def distance(strand_a, strand_b):
    if len(strand_a) != len(strand_b):
        raise ValueError("Two strands are not equal")

    diffs = 0

    for i in range(len(strand_a)):
        if strand_a[i] != strand_b[i]:
            diffs += 1

    return diffs
