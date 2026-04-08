class ReportManager:
    def __init__(self, file_name, method):
        self.file_name = file_name
        self.method = method
        self.file = None

    def __enter__(self):
        self.file = open(self.file_name, self.method)
        return self.file

    def __exit__(self, exc_type, exc_val, exc_tb):
        if self.file:
            self.file.close()
