Before running the app, do the following:

1/ bundle exec rake import:airplanecrashes
    (be patient, this may take some time because of how much data we're parsing into individual Crash instances)
    
2/ now you're ready to Run Project!
    (yes, I know the site loads very slowly)
    (yes, I know that the crash listing table is pretty much broken for the first few thousand records (still don't know why))
    
3/ I've had to comment out the parsing of the "Type" field in lib/tasks/import.rake, so we don't have a record of which planes were crashed.
    (when I tried to run the previously mentioned bundle exec command to import the data, it would throw an error ("ActiveRecord::SubclassNotFound: Invalid single-table inheritance type: Wright Flyer III is not a subclass of Crash"))
    
let's get this done! :D 