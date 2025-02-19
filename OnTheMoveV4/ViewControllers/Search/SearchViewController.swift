//
//  SearchViewController.swift
//  OnTheMoveV4
//
//  Created by user@53 on 06/02/25.
//

import UIKit
import MapKit
import CoreLocation

class SearchViewController: UIViewController {
    
    var searchQuery: String?
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var sourceTextField: UITextField!
    
    @IBOutlet weak var destinationTextField: UITextField!
    
    @IBOutlet weak var dateAndTimePicker: UIDatePicker!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var searchButton: UIButton!

    var sourceLocation: Location?
    var destinationLocation: Location?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let query = searchQuery {
            print("Search Query Received: \(query)")
            
        }
        
        setupMapView()
        setupTextFieldListeners()
    }
    
    private func setupMapView() {
        mapView.delegate = self
        mapView.showsUserLocation = true
    }
    
    private func setupTextFieldListeners() {
        sourceTextField.delegate = self
        destinationTextField.delegate = self
    }
    
    
    
    private func calculateAndDisplayRoute(source: CLLocationCoordinate2D, destination: CLLocationCoordinate2D) {
            let sourcePlacemark = MKPlacemark(coordinate: source)
            let destinationPlacemark = MKPlacemark(coordinate: destination)
            
            let sourceItem = MKMapItem(placemark: sourcePlacemark)
            let destinationItem = MKMapItem(placemark: destinationPlacemark)
            
            let request = MKDirections.Request()
            request.source = sourceItem
            request.destination = destinationItem
            request.transportType = .automobile
            
            let directions = MKDirections(request: request)
            directions.calculate { [weak self] response, error in
                guard let self = self, let route = response?.routes.first, error == nil else {
                    print("Error calculating route: \(error?.localizedDescription ?? "Unknown error")")
                    return
                }
                
                // Draw the route on the map
                self.mapView.addOverlay(route.polyline)
                
                // Print route details
                print("Distance: \(route.distance / 1000) km")
                print("Estimated Time: \(route.expectedTravelTime / 60) minutes")
            }
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "searchToRidersSegue",
           let destinationVC = segue.destination as? SearchRidersViewController {
            // Pass the address texts (if desired)
            destinationVC.sourceAddress = sourceTextField.text
            destinationVC.destinationAddress = destinationTextField.text
            
            // Pass the selected date/time
            destinationVC.dateTime = dateAndTimePicker.date
            
            // Optionally, also pass the geocoded location objects if needed later
            destinationVC.sourceLocation = self.sourceLocation
            destinationVC.destinationLocation = self.destinationLocation
        }
    }
    
}

extension SearchViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let identifier = "customPin"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView
        
        if annotationView == nil {
            annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView?.canShowCallout = true
            annotationView?.markerTintColor = annotation.title == "Source" ? .blue : .red
            annotationView?.animatesWhenAdded = true
            annotationView?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        } else {
            annotationView?.annotation = annotation
        }
        
        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if let polyline = overlay as? MKPolyline {
            let renderer = MKPolylineRenderer(overlay: polyline)
            renderer.strokeColor = .systemBlue
            renderer.lineWidth = 4.0
            return renderer
        }
        return MKOverlayRenderer(overlay: overlay)
    }
}

extension SearchViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        if let locationName = textField.text {
            geocodeAddress(locationName) { coordinate, addressString in
                guard let coordinate = coordinate else { return }
                
                let address = Address(
                    id: UUID().uuidString,
                    name: locationName,
                    description: nil,
                    address: addressString ?? "Unknown Address",
                    city: nil,
                    state: nil,
                    country: nil,
                    zip: nil
                )
                
                let location = Location(
                    locationId: UUID().uuidString,
                    latitude: coordinate.latitude,
                    longitude: coordinate.longitude,
                    address: address
                )
                
                if textField == self.sourceTextField {
                    self.sourceLocation = location
                    self.addPin(coordinate: coordinate, title: "Source")
                } else if textField == self.destinationTextField {
                    self.destinationLocation = location
                    self.addPin(coordinate: coordinate, title: "Destination")
                }
                
                // If both locations are set, calculate the route and print details
                if let source = self.sourceLocation, let destination = self.destinationLocation {
                    self.calculateAndDisplayRoute(source: CLLocationCoordinate2D(latitude: source.latitude, longitude: source.longitude), destination: CLLocationCoordinate2D(latitude: destination.latitude, longitude: destination.longitude))
                    self.printLocations(source: source, destination: destination)
                }
            }
        }
        
        return true
    }
    
    private func geocodeAddress(_ address: String, completion: @escaping (CLLocationCoordinate2D?, String?) -> Void) {
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(address) { placemarks, error in
            if let placemark = placemarks?.first, let location = placemark.location {
                completion(location.coordinate, placemark.name)
            } else {
                print("Geocoding error: \(error?.localizedDescription ?? "Unknown error")")
                completion(nil, nil)
            }
        }
    }
    
    private func addPin(coordinate: CLLocationCoordinate2D, title: String) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = title
        mapView.addAnnotation(annotation)
        
        // Optionally adjust map region to show the pin
        let region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
        mapView.setRegion(region, animated: true)
    }
    
    private func printLocations(source: Location, destination: Location) {
        print("Source Location:")
        print("Latitude: \(source.latitude), Longitude: \(source.longitude)")
        print("Address: \(source.address.address)")
        
        print("Destination Location:")
        print("Latitude: \(destination.latitude), Longitude: \(destination.longitude)")
        print("Address: \(destination.address.address)")
    }
    
}
