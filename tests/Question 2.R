test = list(
  name = "Question 2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      success_message = "Good job. You have successfully filtered the data set to only include observations where the species is Adelie!",
      failure_message = "Oops! Let's give it another try. Ensure you have filtered the penguins data to only keep rows where the entry for **species** exactly matches **Adelie**.",
      code = {
        test_that('the subset only has Adelie penguins', {
          expect_output(print(unique(penguins_subset$species)), "[1] Adelie", fixed = TRUE)
  
        })
  
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      success_message = "You are doing great. The data only has female penguins!",
      failure_message = "Oops! Let's give it another try. Perhaps we included some male penguins?",
      code = {
        test_that('the subset only has female penguins', {
          expect_output(print(unique(penguins_subset$sex)), "[1] female", fixed = TRUE)
  
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      success_message = "That's right. You have successfully kept penguins from Torgersen and Dream islands.",
      failure_message = "Almost there. Let's give it another try. Perhaps we included some Biscoe penguins?",
      code = {
        test_that('the subset only has penguins from Torgersen and Dream islands', {
          expect_output(print(unique(penguins_subset$island)), "[1] Torgersen Dream", fixed = TRUE)
  
        })

      }
    )
  )
)