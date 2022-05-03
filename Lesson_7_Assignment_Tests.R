library(testthat)

# each call to test_that() produces one test
# each test represents one point value
# you can have multiple tests for each question
nc1 <- num_class(-1)
nc2 <- num_class(3)
nc3 <- num_class(29)
nc4 <- num_class(1001)

test_that("Q3a (visible)", {
  
  expect_true(class(num_class) == "function")
  
})

test_that("Q3b (visible)", {
  
  expect_true(nc1 == "ERROR")
  expect_true(nc2 == "prime")
  expect_true(nc3 == "prime")
  expect_true(nc4 == "odd")
  
})

test_that("Q4 nctry1 (visible)", {
  
  expect_true(nctry1 == "ERROR")
  
})

test_that("Q4 nctry2 (visible)", {
  
  expect_true(nctry2 == "even")

})

test_that("Q4 nctry3 and nctry4 (visible)", {
  
  expect_true(nctry3 == "prime")
  expect_true(nctry4 == "even")
  
})

test_that("Q6 Entries 1 to 50 (visible)", {
  
  expect_true(numtypes[1] == "prime")
  expect_true(numtypes[9] == "odd")
  expect_true(numtypes[23] == "prime")
  expect_true(numtypes[41] == "prime")
  expect_true(numtypes[48] == "even")
  
})

test_that("Q6 Entries 51 to 100 (visible)", {
  
  expect_true(numtypes[61] == "prime")
  expect_true(numtypes[79] == "prime")
  expect_true(numtypes[83] == "prime")
  expect_true(numtypes[91] == "odd")
  expect_true(numtypes[98] == "even")
  
})

test_that("Q7 (visible)", {
  
  expect_equal(prime1to100, 26, tolerance = 1e-3)

})

test_that("Q9 Dimensions (visible)", {
  
  expect_equal(dim(benchp)[1], 4116, tolerance = 1e-3)
  expect_equal(dim(benchp)[2], 8, tolerance = 1e-3)
  
})

test_that("Q9 Values (visible)", {
  
  expect_equal(benchp$Age[4], 51, tolerance = 1e-3)
  expect_equal(benchp$Bench2Kg[2], 55, tolerance = 1e-3)
  expect_equal(benchp$Best3BenchKg[3198], 220, tolerance = 1e-3)
  expect_equal(benchp$Bench2Kg[2383], 225, tolerance = 1e-3)
  
})

test_that("Q10 Dimensions (visible)", {
  
  expect_equal(dim(benchp2)[1], 4116, tolerance = 1e-3)
  expect_equal(dim(benchp2)[2], 8, tolerance = 1e-3)
  
})

test_that("Q10 Values (visible)", {
  
  expect_equal(benchp2$Age[85], 32.5, tolerance = 1e-3)
  expect_equal(benchp2$Bench2Kg[287], -90, tolerance = 1e-3)
  expect_equal(benchp2$Best3BenchKg[3196], 210, tolerance = 1e-3)
  expect_equal(benchp2$Bench2Kg[233], -220, tolerance = 1e-3)
  
})

test_that("Q11 Dimensions (visible)", {
  
  expect_equal(dim(benchbycountryandsex)[1], 20, tolerance = 1e-3)
  expect_equal(dim(benchbycountryandsex)[2], 5, tolerance = 1e-3)
  
})

test_that("Q11 Values Female (visible)", {
  
  expect_equal(benchbycountryandsex$Age[2], 39.5, tolerance = 1e-3)
  expect_equal(benchbycountryandsex$Best3BenchKg[3], 205, tolerance = 1e-3)
  expect_equal(benchbycountryandsex$Best3BenchKg[7], 185, tolerance = 1e-3)
  expect_equal(benchbycountryandsex$Best3BenchKg[8], 185, tolerance = 1e-3)
  
})

test_that("Q11 Values Male (visible)", {
  
  expect_equal(benchbycountryandsex$Age[12], 32, tolerance = 1e-3)
  expect_equal(benchbycountryandsex$Best3BenchKg[13], 370, tolerance = 1e-3)
  expect_equal(benchbycountryandsex$Best3BenchKg[17], 355, tolerance = 1e-3)
  expect_equal(benchbycountryandsex$Best3BenchKg[18], 347.5, tolerance = 1e-3)
  
})

test_that("Q12 Dimensions (visible)", {
  
  expect_equal(dim(pl50)[1], 60, tolerance = 1e-3)
  expect_equal(dim(pl50)[2], 7, tolerance = 1e-3)
  
})

test_that("Q12 Values 1 (visible)", {
  
  expect_equal(pl50$Age[2], 50, tolerance = 1e-3)
  expect_equal(pl50$Best3SquatKg[3], 182.5, tolerance = 1e-3)
  expect_equal(pl50$Best3SquatKg[7], 185, tolerance = 1e-3)
  expect_equal(pl50$Best3SquatKg[8], 177.5, tolerance = 1e-3)
  expect_equal(pl50$Age[22], 54, tolerance = 1e-3)
  expect_equal(pl50$Best3SquatKg[23], 265, tolerance = 1e-3)
  expect_equal(pl50$Best3SquatKg[27], 210, tolerance = 1e-3)
  expect_equal(pl50$Best3SquatKg[28], 230, tolerance = 1e-3)
  expect_equal(pl50$Age[42], 50, tolerance = 1e-3)
  expect_equal(pl50$Best3SquatKg[43], 220, tolerance = 1e-3)
  expect_equal(pl50$Best3SquatKg[57], 230, tolerance = 1e-3)
  expect_equal(pl50$Best3SquatKg[58], 180, tolerance = 1e-3)
  
})

test_that("Q13 (visible)", {
  
  expect_true(aboveavg == FALSE)

})

