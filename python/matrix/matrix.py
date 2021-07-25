class Matrix:
    def __init__(self, matrix_string):
        self.matrix = matrix_string

    def row(self, index):
        rows = self.matrix.split("\n")
        return list(map(lambda x: int(x), rows[index-1].split(" ")))

    def column(self, index):
        rows = self.matrix.split("\n")
        column = []

        for row in rows:
            column.append(int(row.split(" ")[index-1]))

        return column
