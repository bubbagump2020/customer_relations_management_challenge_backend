# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
  SQL Commands to import the provided .csv file into a PostgreSQL database and to delete the duplicate entries

  These commands ran after rails db:migration

  // .CSV IMPORT
  COPY clients(first_name, last_name, email, stage, phone, company, probability)
  FROM 'C:\Users\Kevin\Desktop\Code_Challenge_CRM_data.csv'
  DELIMITER ','
  CSV HEADER;

  // DUPLICATE DELETION
  DELETE FROM clients ca
  USING clients cb
  WHERE ca.id > cb.id
    AND ca.first_name = cb.first_name
    AND ca.last_name = cb.last_name;




=end