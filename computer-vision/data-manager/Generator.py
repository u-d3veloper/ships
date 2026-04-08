from ImageFile import ImageFile
from Exceptions import UnsupportedFormatError
import os


class Generator:
    def __init__(self):
        pass

    @staticmethod
    def load(folder_path: str):
        for root, dirs, files in os.walk(folder_path):
            for file_name in files:
                yield os.path.join(root, file_name)
