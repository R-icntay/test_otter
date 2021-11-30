test = list(
  name = "Question 1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      success_message = "Excellent. You have successfully filtered the data set to only include observations where the species is Chinstrap!",
      failure_message = "Oops! Let's give it another try. Ensure you have filtered the penguins data to only keep rows where the entry for **species** exactly matches **Chinstrap**.",
      code = {
        suppressPackageStartupMessages({
          library(testthat)
        })


        ## Test ##
        test_that('the subset only has Chinstrap penguins', {
          expect_output(print(unique(chinstrap_penguins$species)), "[1] Chinstrap", fixed = TRUE)
  
        })
  
      }
    )
  )
)