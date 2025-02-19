//
//  CreateViewController.swift
//  OnTheMoveV4
//
//  Created by user@53 on 06/02/25.
//

import UIKit
import CoreLocation

class CreateViewController: UIViewController {

    @IBOutlet weak var repeatPastRidesCollectionView: UICollectionView!
    
    @IBOutlet weak var sourceLocationTextField: UITextField!
    
    @IBOutlet weak var destinationLocationTextField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var numberOfPassengers: UILabel!
    
    @IBOutlet weak var passengerStepper: UIStepper!
    
    @IBOutlet weak var costTextField: UITextField!
    
    @IBOutlet weak var costStepper: UIStepper!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var createButton: UIButton!
    
    @IBOutlet weak var tripTypeSegementControl: UISegmentedControl!
    
    let geocoder = CLGeocoder()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        repeatPastRidesCollectionView.dataSource = self
        repeatPastRidesCollectionView.delegate = self
        configureCollectionViewLayout(repeatPastRidesCollectionView, inset: UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16))
        registerCell()
        
        passengerStepper.value = 2
        numberOfPassengers.text = "\(Int(passengerStepper.value)) Passengers"
        
        costStepper.value = 0
        costTextField.text = "\(Int(costStepper.value))"
        
        tripTypeSegementControl.selectedSegmentIndex = 0
    }
    
    private func registerCell(){
        repeatPastRidesCollectionView.register(UINib(nibName: "RidesCreatedByYouCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "RidesCreatedByYouCollectionViewCell")
    }
    
    private func configureCollectionViewLayout(_ collectionView: UICollectionView, inset: UIEdgeInsets) {
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionInset = inset
            layout.minimumInteritemSpacing = 10
            layout.minimumLineSpacing = 10
        }
    }
    
    @IBAction func passengerStepperValueChanged(_ sender: UIStepper) {
        numberOfPassengers.text = "\(Int(sender.value)) Passengers"
    }
    
    
    @IBAction func costStepperValueChanged(_ sender: UIStepper) {
        costTextField.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func cancelButtonTapped(_ sender: UIButton) {
        sourceLocationTextField.text = ""
        destinationLocationTextField.text = ""
        datePicker.date = Date()  // Reset to current date or any desired default
        passengerStepper.value = 1
        numberOfPassengers.text = "\(Int(passengerStepper.value))"
        costStepper.value = 0
        costTextField.text = "\(Int(costStepper.value))"
        tripTypeSegementControl.selectedSegmentIndex = 0
    }
    
    @IBAction func createButtonTapped(_ sender: UIButton) {
        // 1. Gather input from UI
               let sourceText = sourceLocationTextField.text ?? ""
               let destinationText = destinationLocationTextField.text ?? ""
               let rideDate = datePicker.date
               
               let passengerCount = Int(passengerStepper.value)
               
               let costString = costTextField.text ?? "0"
               let costValue = Double(costString) ?? 0.0
               
               let selectedIndex = tripTypeSegementControl.selectedSegmentIndex
               let tripType = (selectedIndex == 0) ? "One Way Trip" : "Round Way"
               
               // We will do the geocoding in steps:
               // Step 1: Geocode the source address.
               // Step 2: Then geocode the destination address.
               // Step 3: Create and append the new Ride object.

        geocoder.geocodeAddressString(sourceText) { [weak self] sourcePlacemarks, sourceError in
            guard let self = self else { return }
            
            if let error = sourceError {
                print("Geocoding source failed: \(error.localizedDescription)")
                // Optionally, show an alert to the user
                return
            }
            
            let sourceCoordinate: CLLocationCoordinate2D
            if let placemark = sourcePlacemarks?.first,
               let location = placemark.location {
                sourceCoordinate = location.coordinate
            } else {
                // If no placemarks found, default to (0,0) or handle error
                sourceCoordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
            }
            
            // Now geocode the destination
            self.geocoder.geocodeAddressString(destinationText) { destinationPlacemarks, destinationError in
                if let error = destinationError {
                    print("Geocoding destination failed: \(error.localizedDescription)")
                    // Optionally show an alert
                    return
                }
                
                let destinationCoordinate: CLLocationCoordinate2D
                if let placemark = destinationPlacemarks?.first,
                   let location = placemark.location {
                    destinationCoordinate = location.coordinate
                } else {
                    destinationCoordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
                }
                
                // Now we have both coordinates. Let's create the new Ride object.
                
                // 2. Build the Location objects
                let startLocation = Location(
                    locationId: "autoSource\(Int.random(in: 1000...9999))",
                    latitude: sourceCoordinate.latitude,
                    longitude: sourceCoordinate.longitude,
                    address: Address(
                        id: "addrSource\(Int.random(in: 1000...9999))",
                        name: sourceText,
                        description: tripType,
                        address: sourceText,
                        city: nil, state: nil, country: nil, zip: nil
                    )
                )
                
                let endLocation = Location(
                    locationId: "autoDest\(Int.random(in: 1000...9999))",
                    latitude: destinationCoordinate.latitude,
                    longitude: destinationCoordinate.longitude,
                    address: Address(
                        id: "addrDest\(Int.random(in: 1000...9999))",
                        name: destinationText,
                        description: tripType,
                        address: destinationText,
                        city: nil, state: nil, country: nil, zip: nil
                    )
                )
                
                // 3. Determine a new ride ID
                let newRideId = max(
                    satvikPastRides.map({ $0.id }).max() ?? 0,
                    satvikUpcomingRides.map({ $0.id }).max() ?? 0
                ) + 1
                
                // 4. Decide ride status (past if date < now, else in progress)
                let rideStatus: RideStatus = (rideDate > Date()) ? .inProgress : .completed
                
                // 5. Create the new ride
                let newRide = Ride(
                    id: newRideId,
                    date: rideDate,
                    passengerCount: passengerCount,
                    price: costValue,
                    startLocation: startLocation,
                    endLocation: endLocation,
                    driver: UserReference(
                        id: 1,
                        firstName: "Satvik",
                        lastName: "Sawhney",
                        profileImage: "Satvik Sawhney"
                    ),
                    passengers: [],
                    status: rideStatus,
                    createdAt: Date() // Right now
                )
                
                // 6. Append to either upcoming or past
                if rideDate > Date() {
                    satvikUpcomingRides.insert(newRide, at: 0)
                } else {
                    satvikPastRides.insert(newRide, at: 0)
                    // Reload the past rides collection if displayed here
                    self.repeatPastRidesCollectionView.reloadData()
                }
                
                // 7. Debug prints
                print("===== NEW RIDE CREATED =====")
                print("ID: \(newRideId)")
                print("Source: \(sourceText) -> (\(sourceCoordinate.latitude), \(sourceCoordinate.longitude))")
                print("Destination: \(destinationText) -> (\(destinationCoordinate.latitude), \(destinationCoordinate.longitude))")
                print("Date: \(rideDate)")
                print("Passengers: \(passengerCount)")
                print("Cost: \(costValue)")
                print("Trip Type: \(tripType)")
                print("Status: \(newRide.status.rawValue)")
            }
        }
    }
    
    
}

extension CreateViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView{
        case repeatPastRidesCollectionView:
            return satvikPastRides.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView{
            case repeatPastRidesCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RidesCreatedByYouCollectionViewCell", for: indexPath) as! RidesCreatedByYouCollectionViewCell
            cell.setup(ride:satvikPastRides[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
}
