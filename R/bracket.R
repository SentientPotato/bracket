
bracket <- function(participants, randomize_seeds = FALSE) {
    ## Randomize seeding if requested
    if ( randomize_seeds ) {
        seeds <- match(participants, sample(participants))
    } else {
        seeds <- seq_along(participants)
    }
    ## Determine number of byes
    N <- length(participants)
    M <- ceiling(log(x = N, base = 2))
    B <- 2^M - N
    attr(participants, "seed") <- seeds
    class(participants) <- "bracket"
    return(participants)
}
