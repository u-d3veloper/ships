class UnsupportedFormatError(Exception):
    def __init__(self, format):
        super().__init__("Unsupported file format: " +
                         format + ". Supported formats are: jpg, jpeg, png, gif.")
