rBloodstock 0.1.0
=================

R package with variety of datasets from Thoroughbred Bloodstock Sales, at the time of writing there are just 5 datasets of Tattersalls sales from 2010 to 2014 (incomplete)

#### Installation
Within R
```R
devtools::install_github(repo = "durtal/rBloodstock")
```

#### Datasets
Only Tattersalls sales are in the package at the moment, hopefully others will be added in time (sales from Goffs etc.)

##### Tattersalls sales
Data was sourced from [Tattersalls](http://db.tattersalls.com/4DCGI/Entry/Index)

Name | Sales included | Dim
-----|----------------|-----
tatts_2010 | <sub>dec_mares, dec_foals, dec_yearlings, autumn_hit, breeders_flat, oct_bk3, oct_bk2, oct_bk1, sept, july, guineas, craven, feb</sub> | 8346 rows, 12 cols
tatts_2011 | <sub>dec_mares, dec_foals, dec_yearlings, autumn_hit, breeders_flat, oct_bk3, oct_bk2, oct_bk1, sept, july, breeze_up, craven, feb</sub> | 7488 rows, 12 cols
tatts_2012 | <sub>dec_mares, dec_foals, dec_yearlings, nov_yearlings, autumn_hit, oct_bk3, oct_bk2, oct_bk1, sept, july, guineas_hit, guineas, craven, feb</sub> | 7739 rows, 12 cols
tatts_2013 | <sub>dec_mares, dec_foals, dec_yearlings, nov_yearlings, autumn_hit, oct_bk4, oct_bk3, oct_bk2, oct_bk1, sept, july, guineas_hit, guineas, craven, feb</sub> | 8867 rows, 12 cols
tatts_2014 | <sub>oct_bk3, oct_bk2, oct_bk1,sept, july, guineas_hit, guineas, craven, feb</sub> | 4064 rows, 12 cols

The `collect_tatts_sales` function will collect data from a sale that is perhaps not included in the package datasets.  The format Tattersalls presents data appears to be consistent across all sales, however no guarantees are made this function will perform as desired, if you discover an issue let me know.
