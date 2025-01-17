# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

cpptrans_cdf <- function(originaldata) {
    .Call(`_sBayesRF_cpptrans_cdf`, originaldata)
}

cpptrans_cdf_test <- function(originaldata, testdata) {
    .Call(`_sBayesRF_cpptrans_cdf_test`, originaldata, testdata)
}

find_term_nodes <- function(tree_table) {
    .Call(`_sBayesRF_find_term_nodes`, tree_table)
}

get_treepreds <- function(original_y, num_cats, alpha_pars, originaldata, treetable) {
    .Call(`_sBayesRF_get_treepreds`, original_y, num_cats, alpha_pars, originaldata, treetable)
}

#' @title For a set of trees, obtain tree matrices with predictions, and obtain model weights
#' @export
get_treelist <- function(original_y, num_cats, alpha_pars, beta_pow, originaldata, treetable_list) {
    .Call(`_sBayesRF_get_treelist`, original_y, num_cats, alpha_pars, beta_pow, originaldata, treetable_list)
}

get_test_probs <- function(weights, num_cats, testdata, treetable) {
    .Call(`_sBayesRF_get_test_probs`, weights, num_cats, testdata, treetable)
}

#' @title Given tree tables and model weights, obtain predicted probabilities for test data.
#' @export
get_test_prob_overall <- function(weights, num_cats, testdata, treetable_list) {
    .Call(`_sBayesRF_get_test_prob_overall`, weights, num_cats, testdata, treetable_list)
}

#' @title Draw a set of trees from the prior.
#' @export
draw_trees <- function(lambda, num_trees, seed, num_split_vars, num_cats) {
    .Call(`_sBayesRF_draw_trees`, lambda, num_trees, seed, num_split_vars, num_cats)
}

#' @title Safe-Bayesian Random Forest. Initial test function.
#' @export
sBayesRF <- function(lambda, num_trees, seed, num_cats, y, original_datamat, alpha_parameters, beta_par, test_datamat) {
    .Call(`_sBayesRF_sBayesRF`, lambda, num_trees, seed, num_cats, y, original_datamat, alpha_parameters, beta_par, test_datamat)
}

#' @title Safe-Bayesian Random Forest
#'
#' @description An implementation of the Safe-Bayesian Random Forest described by Quadrianto and Ghahramani (2015)
#' @param lambda A real number between 0 and 1 that determines the splitting probability in the prior (which is used as the importance sampler of tree models). Quadrianto and Ghahramani (2015) recommend a value less than 0.5 .
#' @param num_trees The number of trees to be sampled.
#' @param seed The seed for random number generation.
#' @param num_cats The number of possible values for the outcome variable.
#' @param y The training data vector of outcomes. This must be a vector of integers between 1 and num_cats.
#' @param original_datamat The original training data. Currently all variables must be continuous. The training data does not need to be transformed before being entered to this function.
#' @param alpha_parameters Vector of prior parameters.
#' @param beta_par The power to which the likelihood is to be raised. For BMA, set beta_par=1.
#' @param original_datamat The original test data. This matrix must have the same number of columns (variables) as the training data. Currently all variables must be continuous. The test data does not need to be transformed before being entered to this function.
#' @export
sBayesRF_onefunc <- function(lambda, num_trees, seed, num_cats, y, original_datamat, alpha_parameters, beta_par, test_datamat) {
    .Call(`_sBayesRF_sBayesRF_onefunc`, lambda, num_trees, seed, num_cats, y, original_datamat, alpha_parameters, beta_par, test_datamat)
}

#' @title Safe-Bayesian Random Forest in C++
#'
#' @description An implementation of the Safe-Bayesian Random Forest described by Quadrianto and Ghahramani (2015)
#' @param lambda A real number between 0 and 1 that determines the splitting probability in the prior (which is used as the importance sampler of tree models). Quadrianto and Ghahramani (2015) recommend a value less than 0.5 .
#' @param num_trees The number of trees to be sampled.
#' @param seed The seed for random number generation.
#' @param num_cats The number of possible values for the outcome variable.
#' @param y The training data vector of outcomes. This must be a vector of integers between 1 and num_cats.
#' @param original_datamat The original training data. Currently all variables must be continuous. The training data does not need to be transformed before being entered to this function.
#' @param alpha_parameters Vector of prior parameters.
#' @param beta_par The power to which the likelihood is to be raised. For BMA, set beta_par=1.
#' @param original_datamat The original test data. This matrix must have the same number of columns (variables) as the training data. Currently all variables must be continuous. The test data does not need to be transformed before being entered to this function.
#' @export
sBayesRF_onefunc_arma <- function(lambda, num_trees, seed, num_cats, y, original_datamat, alpha_parameters, beta_par, test_datamat) {
    .Call(`_sBayesRF_sBayesRF_onefunc_arma`, lambda, num_trees, seed, num_cats, y, original_datamat, alpha_parameters, beta_par, test_datamat)
}

#' @title Parallel Safe-Bayesian Random Forest
#'
#' @description A parallelized implementation of the Safe-Bayesian Random Forest described by Quadrianto and Ghahramani (2015)
#' @param lambda A real number between 0 and 1 that determines the splitting probability in the prior (which is used as the importance sampler of tree models). Quadrianto and Ghahramani (2015) recommend a value less than 0.5 .
#' @param num_trees The number of trees to be sampled.
#' @param seed The seed for random number generation.
#' @param num_cats The number of possible values for the outcome variable.
#' @param y The training data vector of outcomes. This must be a vector of integers between 1 and num_cats.
#' @param original_datamat The original training data. Currently all variables must be continuous. The training data does not need to be transformed before being entered to this function.
#' @param alpha_parameters Vector of prior parameters.
#' @param beta_par The power to which the likelihood is to be raised. For BMA, set beta_par=1.
#' @param original_datamat The original test data. This matrix must have the same number of columns (variables) as the training data. Currently all variables must be continuous. The test data does not need to be transformed before being entered to this function.
#' @param ncores The number of cores to be used in parallelization.
#' @return A matrix of probabilities with the number of rows equl to the number of test observations and the number of columns equal to the number of possible outcome categories.
#' @export
sBayesRF_onefunc_parallel <- function(lambda, num_trees, seed, num_cats, y, original_datamat, alpha_parameters, beta_par, test_datamat, ncores) {
    .Call(`_sBayesRF_sBayesRF_onefunc_parallel`, lambda, num_trees, seed, num_cats, y, original_datamat, alpha_parameters, beta_par, test_datamat, ncores)
}

