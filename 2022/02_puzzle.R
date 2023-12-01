# Puzzle Two: Part One
data <- readr::read_delim("./data/02_input",
                        delim = " ",
                        col_names = FALSE)
winning_df <- tibble::tibble(
X1 = c("A", "B", "C",
        "A", "B", "C",
        "A", "B", "C"),
    X2 = c("Y", "Z", "X",
            "X", "Y", "Z",
            "Z", "X", "Y"),
    score = c(6, 6, 6,
            3, 3, 3,
            0, 0, 0)
)
shape_df <- tibble::tibble(
    X2 = c("X", "Y", "Z"),
    shape_score = c(1, 2, 3)
)
data_df <- dplyr::left_join(data, winning_df)
data_df <- dplyr::left_join(data_df, shape_df)
data_df |>
    dplyr::mutate(total_score = score + shape_score) |>
    dplyr::summarise(cumulative_score = sum(total_score))
# Puzzle Two: Part Two

winning_df <- tibble::tibble(
    X1 = c("A", "B", "C",
        "A", "B", "C",
        "A", "B", "C"),
    X2 = c("X", "X", "X",
            "Y", "Y", "Y",
            "Z", "Z", "Z"),
    desired_score = c(0, 0, 0,
            3, 3, 3,
            6, 6, 6),
    shape_play = c("Z", "X", "Y",
            "X", "Y", "Z",
            "Y", "Z", "X")
)

data_df_two <- dplyr::left_join(data_df, winning_df)
shape_df_two <- tibble::tibble(
    shape_play = c("X", "Y", "Z"),
    shape_score_two = c(1, 2, 3)
)
data_df_two <- dplyr::left_join(data_df_two,
                                shape_df_two,
                                by = c("shape_play"))
data_df_two |>
    dplyr::mutate(new_total = desired_score + shape_score_two) |>
    dplyr::summarise(cumulative_score = sum(new_total))
