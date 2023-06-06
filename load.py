import extract
import transform
import folium
import csv


# Open the CSV file
with open('transformed_data.csv', 'r') as file:
    csv_reader = csv.DictReader(file)
    # Extract the locations from the "city" column
    locations = [[row['latitude'],row['longitude']] for row in csv_reader]

map = folium.Map(location=[36.73758952711059, 3.087110574062221], zoom_start=10)

# Use the location data in your code
for location in locations:
    print(location)
    folium.Marker(location, popup='Algiers').add_to(map)

# Create a map


# Add markers

# Save the map as an HTML file
map.save('map.html')

