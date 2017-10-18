require 'csv'

namespace :import do
    
    desc "Importing the crash data from locally stored csv"
    task airplanecrashes: :environment do
        counter = 0
        CSV.foreach("airplanecrashes.csv", headers: true) do |row|
            crash = Crash.create!(
                date: row["Date"], 
                time: row["Time"], 
                location: row["Location"], 
                operator: row["Operator"], 
                flight: row["Flight #"], 
                route: row["Route"], 
#                type: row["Type"],
                registration: row["Registration"], 
                cn: row["cn/In"], 
                aboard: row["Aboard"], 
                fatalities: row["Fatalities"], 
                ground: row["Ground"], 
                summary: row["Summary"])
            counter =+ 1 if crash.persisted?
        end
        
    end
end