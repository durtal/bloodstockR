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
#'      \item \link{tatts_2015} 307 rows, consisting of one sale (more will be 
#'      added)
#'      \item \link{tatts_2014} 7429 rows, made up of 13 individual sales
#'      \item \link{tatts_2013} 7192 rows, made up of 13 individual sales
#'      \item \link{tatts_2012} 7101 rows, made up of 12 individual sales
#'      \item \link{tatts_2011} 6946 rows, made up of 12 individual sales
#'      \item \link{tatts_2010} 7796 rows, made up of 12 individual sales
#' }
#' 
#' @section Tatts Variables:
#' \itemize{
#'      \item year year of sale
#'      \item sale sale name (often same year on year)
#'      \item sale_name concatenation of \emph{sale} and \emph{year}
#'      \item lot_no lot number
#'      \item horse horse (plenty of unnamed)
#'      \item sex horses' sex
#'      \item color horses' color
#'      \item sire horses' sire
#'      \item dam horses' dam
#'      \item consignor seller
#'      \item purchaser buyer
#'      \item price in guineas
#' }
#' 
#' @section sex:
#' \itemize{
#'      \item c colt
#'      \item f filly
#'      \item g gelding
#'      \item h horse
#'      \item m mare
#' }
#' 
#' @section color:
#' \itemize{
#'      \item b bay
#'      \item br brown
#'      \item ch chesnut
#'      \item gr grey
#'      \item ro roan
#' } 
NULL

#' Tattersalls sales in 2015
#' 
#' @description Dataset of Tattersalls sales in 2015
#' 
#' @name tatts_2015
#' @docType data
#' @keywords dataset
#' @format 307 rows, 12 columns
#' 
#' @section tatts_2015:
#' \itemize{
#'      \item feb_2015 February 2015 sale
#' }
NULL

#' Tattersalls Sales in 2014
#' 
#' @description Dataset of 13 Tattersalls sales in 2014
#' 
#' @name tatts_2014
#' @docType data
#' @keywords dataset
#' @format 7429 rows, 12 columns
#' 
#' @section tatts_2014:
#' \itemize{
#'      \item dec_mares_2014 December Mares 2014 Sale
#'      \item dec_foals_2014 December Foals 2014 Sale
#'      \item dec_yearlings_2014 December Yearlings 2014 Sale
#'      \item autumn_hit_2014 Autumn Horses in Training 2014 Sale
#'      \item oct_bk4_2014 October Book 4 2014 Sale
#'      \item oct_bk3_2014 October Book 3 2014 Sale
#'      \item oct_bk2_2014 October Book 2 2014 Sale
#'      \item oct_bk1_2014 October Book 1 2014 Sale
#'      \item july_2014 July 2014 Sale
#'      \item guineas_hit_2014 Guineas Horses in Training 2014 Sale
#'      \item guineas_2014 Guineas 2014 Sale
#'      \item craven_2014 Craven 2014 Sale
#'      \item feb_2014 February 2014 Sale
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
#'      \item dec_mares_2013 December Mares 2013 Sale
#'      \item dec_foals_2013 December Foals 2013 Sale
#'      \item dec_yearlings_2013 December Yearlings 2013 Sale
#'      \item autumn_hit_2013 Autumn Horses in Training 2013 Sale
#'      \item oct_bk4_2013 October Book 4 2013 Sale
#'      \item oct_bk3_2013 October Book 3 2013 Sale
#'      \item oct_bk2_2013 October Book 2 2013 Sale
#'      \item oct_bk1_2013 October Book 1 2013 Sale
#'      \item july_2013 July 2013 Sale
#'      \item guineas_hit_2013 Guineas Horses in Training 2013 Sale
#'      \item guineas_2013 Guineas 2013 Sale
#'      \item craven_2013 Craven 2013 Sale
#'      \item feb_2013 February 2013 Sale
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
#'      \item dec_mares_2012 December Mares 2012 Sale
#'      \item dec_foals_2012 December Foals 2012 Sale
#'      \item dec_yearlings_2012 December Yearlings 2012 Sale
#'      \item autumn_hit_2012 Autumn Horses in Training 2012 Sale
#'      \item oct_bk3_2012 October Book 3 2012 Sale
#'      \item oct_bk2_2012 October Book 2 2012 Sale
#'      \item oct_bk1_2012 October Book 1 2012 Sale
#'      \item july_2012 July 2012 Sale
#'      \item guineas_hit_2012 Guineas Horses in Training 2012 Sale
#'      \item guineas_2012 Guineas 2012 Sale
#'      \item craven_2012 Craven 2012 Sale
#'      \item feb_2012 February 2012 Sale
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
#'      \item dec_mares_2011 December Mares 2011 Sale
#'      \item dec_foals_2011 December Foals 2011 Sale
#'      \item dec_yearlings_2011 December Yearlings 2011 Sale
#'      \item autumn_hit_2011 Autumn Horses in Training 2011 Sale
#'      \item breeders_flat_2011 Breeders Flat 2011 Sale
#'      \item oct_bk3_2011 October Book 3 2011 Sale
#'      \item oct_bk2_2011 October Book 2 2011 Sale
#'      \item oct_bk1_2011 October Book 1 2011 Sale
#'      \item july_2011 July 2011 Sale
#'      \item breeze_up_2011 Breeze Up 2011 Sale
#'      \item craven_2011 Craven 2011 Sale
#'      \item feb_2011 February 2011 Sale
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
#'      \item dec_mares_2010 December Mares 2010 Sale
#'      \item dec_foals_2010 December Foals 2010 Sale
#'      \item dec_yearlings_2010 December Yearlings 2010 Sale
#'      \item autumn_hit_2010 Autumn Horses in Training 2010 Sale
#'      \item breeders_flat_2010 Breeders Flat 2010 Sale
#'      \item oct_bk3_2010 October Book 3 2010 Sale
#'      \item oct_bk2_2010 October Book 2 2010 Sale
#'      \item oct_bk1_2010 October Book 1 2010 Sale
#'      \item july_2010 July 2010 Sale
#'      \item guineas_2010 Breeze Up 2010 Sale
#'      \item craven_2010 Craven 2010 Sale
#'      \item feb_2010 February 2010 Sale
#' }
NULL