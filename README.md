# Project_2

Data sources:
Restaurant week ratings from New York: https://www.kaggle.com/popoandrew/restaurant-week-2018
NYC Open Data restaurant inspection results: https://data.cityofnewyork.us/Health/DOHMH-New-York-City-Restaurant-Inspection-Results/43nn-pn8j

	The most challenging part for the projects was the part of finding and deciding on what topic and datasets to use. There are diverse and vast numbers of datasets on the internet, but it is difficult to find datasets that would be ideal to merge or combine for the project. We actually spent the whole first day just for deciding for the right topic to work on. We first found health inspection reports in San Francisco and tried to locate a dataset of Yelp reviews.  The only Yelp dataset did not focus at all on San Francisco, let alone California. After a few topics, we ended up working on our first idea about restaurants but with different datasets from New York. For the ETL project, we choose to work on health inspection reports and ratings of restaurant in New York City.

	Once we got all the datasets, we began the ETL process. We loaded the csv files in jupyter notebook with pandas and transformed them into Data Frames. To organize and clean the datasets, we removed the empty/missing data in all Data Frames. The inspection dataset was done for more than a year. We originally planned to just get the most recent inspection but, in the end, decided to retain all data which can be useful for future reference or study. 
	
	We made a schema for the database of the project and then created appropriate tables where we can load/connect the cleaned datasets from jupyter notebook.  We dropped a few unnecessary columns from both of the datasets.  We also renamed a few of the columns on the inspection dataset.
	
	We found an issue during the loading of datasets from jupyter notebook to mySQL via SQLalchemy. There are symbols or foreign characters that are not compatible to the character code ‘UTF-8’of the database. We had to search for codes that would remove or change all the foreign characters (such as Â and º). The portion of data that required a bit of cleaning was the zip codes on the inspection reports. The zip codes all had a .0 at the end of them that needed to be removed. After removing all the odd and extra characters, everything else was straightforward. We were able to load everything on the database and then join the tables on name of restaurant and zip code. 

	The transforming and loading part were not that difficult but there were times when we had trouble on coding. We just needed refreshers to remember the right codes and we always have the internet that has all the answers and codes we’re looking for. 
