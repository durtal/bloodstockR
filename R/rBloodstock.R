#' rBloodstock
#' 
#' A growing collection of Thoroughbred Horse sales datasets
#' 
#' @author Thomas Heslop
#' @docType package
#' @name rBloodstock
#' @source \url{http://db.tattersalls.com/4DCGI/Entry/Index}
#' 
#' @section Datasets: 
#' \itemize{
#'      \item \link{tatts_2014} 3359 rows, made up of 8 individual sales (more 
#'      will be added)
#'      \item \link{tatts_2013} 7192 rows, made up of 13 individual sales
#'      \item \link{tatts_2012} 7101 rows, made up of 12 individual sales
#'      \item \link{tatts_2011} 6946 rows, made up of 12 individual sales
#'      \item \link{tatts_2010} 7796 rows, made up of 12 individual sales
#' }
#' 
#' @section Tatts Variables:
#' \itemize{
#'      \item \strong{year} year of sale
#'      \item \strong{sale} sale name (often same year on year)
#'      \item \strong{sale_name} concatenation of \emph{sale} and \emph{year}
#'      \item \strong{lot_no} lot number
#'      \item \strong{horse} horse (plenty of unnamed)
#'      \item \strong{sex} horses' sex
#'      \item \strong{color} horses' color
#'      \item \strong{sire} horses' sire
#'      \item \strong{dam} horses' dam
#'      \item \strong{consignor} seller
#'      \item \strong{purchaser} buyer
#'      \item \strong{price} in guineas
#' }
#' 
#' @section sex:
#' \itemize{
#'      \item \strong{c} colt
#'      \item \strong{f} filly
#'      \item \strong{g} gelding
#'      \item \strong{h} horse
#'      \item \strong{m} mare
#' }
#' 
#' @section color:
#' \itemize{
#'      \item \strong{b} bay
#'      \item \strong{br} brown
#'      \item \strong{ch} chesnut
#'      \item \strong{gr} grey
#'      \item \strong{ro} roan
#' } 
NULL


#' Tattersalls Sales in 2014
#' 
#' @description Dataset of 8 Tattersalls sales in 2014
#' 
#' @name tatts_2014
#' @docType data
#' @keywords dataset
#' @format 3359 rows, 12 columns
#' 
#' @section tatts_2014:
#' \itemize{
#'      \item \strong{oct_bk3_2014} October Book 3 2014 Sale
#'      \item \strong{oct_bk2_2014} October Book 2 2014 Sale
#'      \item \strong{oct_bk1_2014} October Book 1 2014 Sale
#'      \item \strong{july_2014} July 2014 Sale
#'      \item \strong{guineas_hit_2014} Guineas Horses in Training 2014 Sale
#'      \item \strong{guineas_2014} Guineas 2014 Sale
#'      \item \strong{craven_2014} Craven 2014 Sale
#'      \item \strong{feb_2014} February 2014 Sale
#' }
NULL


#' Tattersalls Sales in 2013
#' 
#' @description Dataset of 14 Tattersalls sales in 2013
#' 
#' @name tatts_2013
#' @docType data
#' @keywords dataset
#' @format 7192 rows, 12 columns
#'
#' @section Sales:
#' \itemize{
#'      \item \strong{dec_mares_2013} December Mares 2013 Sale
#'      \item \strong{dec_foals_2013} December Foals 2013 Sale
#'      \item \strong{dec_yearlings_2013} December Yearlings 2013 Sale
#'      \item \strong{autumn_hit_2013} Autumn Horses in Training 2013 Sale
#'      \item \strong{oct_bk4_2013} October Book 4 2013 Sale
#'      \item \strong{oct_bk3_2013} October Book 3 2013 Sale
#'      \item \strong{oct_bk2_2013} October Book 2 2013 Sale
#'      \item \strong{oct_bk1_2013} October Book 1 2013 Sale
#'      \item \strong{july_2013} July 2013 Sale
#'      \item \strong{guineas_hit_2013} Guineas Horses in Training 2013 Sale
#'      \item \strong{guineas_2013} Guineas 2013 Sale
#'      \item \strong{craven_2013} Craven 2013 Sale
#'      \item \strong{feb_2013} February 2013 Sale
#' }
NULL


#' Tattersalls Sales in 2012
#' 
#' @description Dataset of 12 Tattersalls sales in 2012
#' 
#' @name tatts_2012
#' @docType data
#' @keywords dataset
#' @format 7101 rows, 12 columns
#' 
#' @section Sales:
#' \itemize{
#'      \item \strong{dec_mares_2012} December Mares 2012 Sale
#'      \item \strong{dec_foals_2012} December Foals 2012 Sale
#'      \item \strong{dec_yearlings_2012} December Yearlings 2012 Sale
#'      \item \strong{autumn_hit_2012} Autumn Horses in Training 2012 Sale
#'      \item \strong{oct_bk3_2012} October Book 3 2012 Sale
#'      \item \strong{oct_bk2_2012} October Book 2 2012 Sale
#'      \item \strong{oct_bk1_2012} October Book 1 2012 Sale
#'      \item \strong{july_2012} July 2012 Sale
#'      \item \strong{guineas_hit_2012} Guineas Horses in Training 2012 Sale
#'      \item \strong{guineas_2012} Guineas 2012 Sale
#'      \item \strong{craven_2012} Craven 2012 Sale
#'      \item \strong{feb_2012} February 2012 Sale
#' }
NULL


#' Tattersalls Sales in 2011
#' 
#' @description Dataset of 12 Tattersalls sales in 2011
#' 
#' @name tatts_2011
#' @docType data
#' @keywords dataset
#' @format 6946 rows, 12 columns
#'
#' @section tatts_2011:
#' \itemize{
#'      \item \strong{dec_mares_2011} December Mares 2011 Sale
#'      \item \strong{dec_foals_2011} December Foals 2011 Sale
#'      \item \strong{dec_yearlings_2011} December Yearlings 2011 Sale
#'      \item \strong{autumn_hit_2011} Autumn Horses in Training 2011 Sale
#'      \item \strong{breeders_flat_2011} Breeders Flat 2011 Sale
#'      \item \strong{oct_bk3_2011} October Book 3 2011 Sale
#'      \item \strong{oct_bk2_2011} October Book 2 2011 Sale
#'      \item \strong{oct_bk1_2011} October Book 1 2011 Sale
#'      \item \strong{july_2011} July 2011 Sale
#'      \item \strong{breeze_up_2011} Breeze Up 2011 Sale
#'      \item \strong{craven_2011} Craven 2011 Sale
#'      \item \strong{feb_2011} February 2011 Sale
#' }
NULL


#' Tattersalls Sales in 2010
#' 
#' @description Dataset of 12 Tattersalls sales in 2010
#' 
#' @name tatts_2010
#' @docType data
#' @keywords dataset
#' @format 7796 rows, 12 columns
#'
#' @section tatts_2010:
#' \itemize{
#'      \item \strong{dec_mares_2010} December Mares 2010 Sale
#'      \item \strong{dec_foals_2010} December Foals 2010 Sale
#'      \item \strong{dec_yearlings_2010} December Yearlings 2010 Sale
#'      \item \strong{autumn_hit_2010} Autumn Horses in Training 2010 Sale
#'      \item \strong{breeders_flat_2010} Breeders Flat 2010 Sale
#'      \item \strong{oct_bk3_2010} October Book 3 2010 Sale
#'      \item \strong{oct_bk2_2010} October Book 2 2010 Sale
#'      \item \strong{oct_bk1_2010} October Book 1 2010 Sale
#'      \item \strong{july_2010} July 2010 Sale
#'      \item \strong{guineas_2010} Breeze Up 2010 Sale
#'      \item \strong{craven_2010} Craven 2010 Sale
#'      \item \strong{feb_2010} February 2010 Sale
#' }
NULL