import logging
from Generator import Generator
from ImageFile import ImageFile
from ContextManager import ReportManager

DATA_PATH = "data/"

# Configuration globale du logger dès le début
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    handlers=[logging.FileHandler("log/process.log"), logging.StreamHandler()]
)
logger = logging.getLogger("DataManager")


def main():
    # Utilisation du mode "w" pour écraser ou "a" pour ajouter
    with ReportManager("log/report.csv", "w") as report:
        report.write("filename,status,size_after\n")

        for image_path in Generator.load(DATA_PATH):
            try:
                img = ImageFile(image_path)
                img.process("grayscale")
                img.compress()

                # Succès métier
                report.write(f"{img.file_name},SUCCESS,{img.file_size}\n")
                logger.info(f"Image {img.file_name} processed successfully.")

            except Exception as e:
                # Échec métier
                report.write(f"{image_path},FAILED,{e}\n")
                logger.error(f"Failed to process {image_path}: {e}")


if __name__ == "__main__":
    main()
