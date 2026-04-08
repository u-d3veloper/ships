import random
from Exceptions import UnsupportedFormatError
from Decorators import trace_execution


class ImageFile:
    def __init__(self, path: str):
        self.file_path = path
        self.file_name = self.file_path.split(
            '/')[-1] if self.file_path else None
        self.file_extension = self.file_name.split(
            '.')[-1] if self.file_name else None
        if self.file_extension not in ['jpg', 'jpeg', 'png', 'gif']:
            raise UnsupportedFormatError(self.file_extension)
        # Simulating file size in bytes
        self.file_size = random.randint(1000, 1000000)

    def __str__(self):
        return f"ImageFile(path='{self.file_path}', name='{self.file_name}', extension='{self.file_extension}', size={self.file_size} bytes)"

    @trace_execution
    def compress(self, logger=None):
        if self.file_size <= 0:
            raise ValueError(
                "File size must be greater than zero to compress.")
        self.file_size = int(self.file_size * 0.8)

    @trace_execution
    def process(self, filter_type, logger=None):
        self.color_filter = filter_type
