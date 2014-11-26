#' Collect Data
#' 
#' This function allows users to collect data from a specific tattersalls sale 
#' that might not be included in the package. 
#' 
#' @details The format of the data displayed on the pages appears to be uniform
#' between the different sales, however the data is collected via regular 
#' expressions which potentially cause headaches for you the user, apologies. If
#' you do come across a sale that this function cannot collect for let me know
#' and I will attempt to rectify that.  A list of available sales to collect data
#' for can be found here \url{http://db.tattersalls.com/4DCGI/Entry/MenuResults},
#' but please check that the sale you want isn't in this package, find a list
#' of sales here \link{tattssales}
#' 
#' @param \strong{url} the url of the sale
#' @param \strong{sale_name} the name of the sale
#' 
#' @export
collect_tatts_sales <- function(url, sale_name = "NULL") {
    
    if(RCurl::url.exists(url)) {
        htmlfile <- readLines(url, warn=FALSE)
        doc <- XML::htmlParse(htmlfile)
        tabs <- XML::readHTMLTable(doc)
    } else {
        stop("url not recognised")
    }
    
    sales_data <- tabs[[which(sapply(tabs, length)==3)]]
    # each sale has two rows of data, sale_no, price & pedigree on top,
    # buyer and seller data on row 2, so split data
    pedigree_price <- sales_data[grepl("[[:digit:]]", sales_data$V1),]
    buyer_seller <- sales_data[!grepl("[[:digit:]]", sales_data$V1),]
    # remove top row of buyer_seller (which is column names)
    buyer_seller <- buyer_seller[!grepl("Sex\n\t\t", buyer_seller$V2),]
    # extract the sale no (left as character vector as some are sale 1A)
    lot_no <- as.character(pedigree_price$V1)
    # sale price
    price <- as.character(pedigree_price$V3)
    price <- stringr::str_replace_all(price, "[[:punct:]]", "")
    price <- as.numeric(iconv(price, "latin1", "ASCII", ""))
    # convert column 2 of pedigree_price to character
    pedigrees <- as.character(pedigree_price$V2)
    ped_df <- extract_pedigree(pedigrees)
    
    # convert column 2 of buyer_seller to character
    buyers <- as.character(buyer_seller$V2)
    seller_df <- extract_seller(buyers)
    
    comp_df <- cbind(sale_name, lot_no, ped_df, seller_df, price)
    comp_df$lot_no <- as.character(lot_no)
    comp_df$sale_name <- as.character(sale_name)
    
    # further cleaning of dam and sire variables, which sometimes scrape horse, sex and colour
    regx <- "([[:alpha:]]+/)?([[:alpha:]]+\\.)+"
    comp_df$dam <- gsub(pattern = regx, replacement = "", comp_df$dam)
    comp_df$dam <- stringr::str_trim(comp_df$dam, side = "both")
    hregx <- "(([[:alpha:]]*)([[:punct:]]|\\s)?)*\\s\\([[:alpha:]]{2,3}\\)\\s"
    comp_df$sire <- gsub(pattern = hregx, "", comp_df$sire)
    comp_df$sire <- gsub(regx, "", comp_df$sire)
    comp_df$sire <- stringr::str_trim(comp_df$sire, side = "both")
    
    return(comp_df)
}

# helper function to collect pedigree data
extract_pedigree <- function(pedigrees) {
    # vector to check if any unnamed horses are in the sale
    pedigrees <- tolower(pedigrees)
    unnamed <- grepl(" / ", pedigrees)
    
    # extract sires and dams of named horses
    sire <-stringr::str_extract(pedigrees, " by? ?(.*?) ?x ")
    sire <- stringr::str_replace_all(sire, " by | x", "")
    dam <-stringr::str_extract(pedigrees, " x (.*)")
    dam <- stringr::str_replace(dam, " x ", "")
    
    if(any(unnamed)) {
        unnamed_pedigrees <- pedigrees[unnamed]
        unnamed_sire <-stringr::str_extract(unnamed_pedigrees, "(.*) / ")
        unnamed_dam <-stringr::str_extract(unnamed_pedigrees, " / (.*)")
        
        unnamed_sire <- stringr::str_replace(unnamed_sire, " / ", "")
        unnamed_dam <- stringr::str_replace_all(unnamed_dam, " / | [[:alpha:]]+\\.[[:alpha:]]+\\.?", "")
        
        sire[unnamed] <- unnamed_sire
        dam[unnamed] <- unnamed_dam
    }
    
    dam <- stringr::str_replace(dam, " update", "")
    dam <-stringr::str_trim(dam, side = "both")
    sire <-stringr::str_trim(sire, side = "both")
    color <-stringr::str_extract(pedigrees, "[[:alpha:]]+\\.[[:alpha:]]+\\.")
    sex <-stringr::str_extract(color, "\\.[[:alpha:]]+\\.")
    color <- stringr::str_replace(color, sex, "")
    sex <- stringr::str_replace_all(sex, "[[:punct:]]", "")
    
    horse <-stringr::str_extract(pedigrees, "(.*) [[:alpha:]]+\\.[[:alpha:]]+\\.")
    horse <- stringr::str_replace(horse, " [[:alpha:]]+\\.[[:alpha:]]+\\.", "")
    horse[unnamed] <- "unnamed"
    
    ped_df <- data.frame(horse = tolower(horse),
                         sex = tolower(sex),
                         color = tolower(color),
                         sire = tolower(sire),
                         dam = tolower(dam),
                         stringsAsFactors=FALSE)
}

# helper function to collect seller data
extract_seller <- function(buyers) {
    buyers <- iconv(buyers, "latin1", "ASCII", "")
    buyers <- tolower(buyers)
    
    purchaser <-stringr::str_extract(buyers, " ?purchaser:? ?(.*)")
    
    consignor <- stringr::str_extract(buyers, "consignor:? (.*) ?purchaser:?")
    consignor <- stringr::str_replace_all(consignor, "consignor:? ?|purchaser:?", "")
    consignor <-stringr::str_trim(consignor, side="both")
    
    purchaser <- stringr::str_replace(purchaser, "purchaser: ?", "")
    purchaser <-stringr::str_trim(purchaser, side="both")
    
    buyer_df <- data.frame(seller=tolower(consignor), 
                           buyer=tolower(purchaser),
                           stringsAsFactors=FALSE) 
    return(buyer_df)
}