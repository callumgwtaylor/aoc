# Part One
# Hilariously, the main bit was done by ChatGPT!
# Prompt: "in r, create a grouping column,
#    by using NA values to indicate the split between each group"
data <- readr::read_lines("./data/01_input")
data_df <- tibble::tibble(
    calories = as.numeric(data),
    elf = cumsum(is.na(calories))) |>
dplyr::group_by(elf) |>
dplyr::summarise(cumulative_calories = sum(calories, na.rm = TRUE)) |>
    dplyr::arrange(desc(cumulative_calories))
data_df[[1, 2]]


# Puzzle One: Part Two
data_df_top3 <- head(data_df, 3)
sum(data_df_top3$cumulative_calories)
