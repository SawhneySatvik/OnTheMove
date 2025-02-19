//
//  RidesCreatedByYouCollectionViewCell.swift
//  OnTheMoveV4
//
//  Created by user@53 on 07/02/25.
//

import UIKit
import MapKit
import CoreLocation

class RidesCreatedByYouCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var rideMapView: MKMapView!
    
    @IBOutlet weak var sourceLocationLabel: UILabel!
    
    @IBOutlet weak var destinationLocationLabel: UILabel!
    
    @IBOutlet weak var removeButton: UIButton!
    
    @IBOutlet weak var repeatButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
        rideMapView.delegate = self
            
    }
        
    func setup(ride: Ride) {
        sourceLocationLabel.text = ride.startLocation.address.name
        destinationLocationLabel.text = ride.endLocation.address.name
        
        setupMap(ride: ride)
    }
        
    private func setupMap(ride: Ride) {
        // Remove old pins/overlays in case this cell is reused.
        rideMapView.removeAnnotations(rideMapView.annotations)
        rideMapView.removeOverlays(rideMapView.overlays)
        
        // Coordinates for source & destination
        let sourceCoord = CLLocationCoordinate2D(latitude: ride.startLocation.latitude, longitude: ride.startLocation.longitude)
        let destCoord = CLLocationCoordinate2D(latitude: ride.endLocation.latitude, longitude: ride.endLocation.longitude)
        
        // Add pins
        let sourceAnnotation = MKPointAnnotation()
        sourceAnnotation.coordinate = sourceCoord
        sourceAnnotation.title = ride.startLocation.address.name
        
        let destinationAnnotation = MKPointAnnotation()
        destinationAnnotation.coordinate = destCoord
        destinationAnnotation.title = ride.endLocation.address.name
        
        rideMapView.addAnnotations([sourceAnnotation, destinationAnnotation])
        
        // Request driving directions between source & destination.
        let request = MKDirections.Request()
        request.source = MKMapItem(placemark: MKPlacemark(coordinate: sourceCoord))
        request.destination = MKMapItem(placemark: MKPlacemark(coordinate: destCoord))
        request.transportType = .automobile
        
        let directions = MKDirections(request: request)
        directions.calculate { [weak self] response, error in
            guard let self = self else { return }
            
            if let route = response?.routes.first, error == nil {
                // Draw the route polyline on the map
                self.rideMapView.addOverlay(route.polyline)
                
                // Adjust the visible region so the entire route is visible
                self.rideMapView.setVisibleMapRect(
                    route.polyline.boundingMapRect,
                    edgePadding: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20),
                    animated: false
                )
            } else {
                // Fallback: Just zoom out to show both pins if route cannot be fetched
                self.setMapRegionIncluding(coordinates: [sourceCoord, destCoord])
            }
        }
        
    }
    
    private func setMapRegionIncluding(coordinates: [CLLocationCoordinate2D]) {
        var zoomRect = MKMapRect.null
        for coordinate in coordinates {
            let point = MKMapPoint(coordinate)
            let rect = MKMapRect(x: point.x, y: point.y, width: 0.01, height: 0.01)
            zoomRect = zoomRect.union(rect)
        }
        rideMapView.setVisibleMapRect(
            zoomRect,
            edgePadding: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20),
            animated: false
        )
    }
    
    private func setupView(){
        contentView.layer.cornerRadius = 12
        contentView.layer.borderWidth = 1.5
        contentView.layer.borderColor = UIColor.systemGray5.cgColor
        contentView.layer.shadowColor = UIColor.black.cgColor
        contentView.layer.shadowOpacity = 0.15
        contentView.layer.shadowOffset = CGSize(width: 0, height: 2)
        contentView.layer.shadowRadius = 4
        contentView.layer.masksToBounds = false
        contentView.layer.backgroundColor = UIColor.systemGray6.cgColor
        
        rideMapView.layer.cornerRadius = 12
    }
}

extension RidesCreatedByYouCollectionViewCell: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if let polyline = overlay as? MKPolyline {
            let renderer = MKPolylineRenderer(polyline: polyline)
            renderer.strokeColor = .systemBlue
            renderer.lineWidth = 1.0
            return renderer
        }
        return MKOverlayRenderer(overlay: overlay)
    }
}
