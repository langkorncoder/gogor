
#' Read and clean data from a CSV file
#'
#' This function reads a CSV file with specified separator and decimal point, cleans the column names using the clean_names() function from the janitor package, and returns the cleaned data as a tibble.
#' It also removes empty  and constant rows. See ??read_and_clean_data2() as the updated version where less cleaning steps were performed.
#'
#' @param file_path A character string specifying the path to the CSV file.
#' @param seperate A character string specifying the separator used in the CSV file. Default is ";".
#' @param decim A character string specifying the decimal point used in the CSV file. Default is ",".
#' @param tibble A logical value indicating whether the output should be a tibble. Default is TRUE.
#'
#' @return A tibble containing the cleaned data.
#'
#' @importFrom janitor clean_names remove_empty remove_constant
#' @importFrom tibble as_tibble
#' @importFrom utils read.csv
#'
#' @export
read_and_clean_data <- function(file_path, seperate = ";", decim = ",", tibble = TRUE) {
  # Read the CSV file with specified separator and decimal point
  data <- utils::read.csv(file_path, sep = seperate, dec = decim)

  # Clean the column names using the clean_names() function from the janitor package
  cleaned_data <- data %>%
    janitor::clean_names() %>%
    janitor::remove_empty() %>%
    janitor::remove_constant()

  if (tibble) {
    cleaned_data <- tibble::as_tibble(cleaned_data)
  }

  print("Be cautious! If you might have constant rows, that are possibly important for your work, you should think about using read_and_clean_data2(). Check ??read_and_clean_data2 for more informations.")
  # Return the cleaned data
  cleaned_data
}
