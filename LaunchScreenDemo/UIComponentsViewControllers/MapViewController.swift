//
//  MapViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 24/04/23.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet private weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    var officeLocation = CLLocationCoordinate2D(latitude: 23.024650718994916, longitude: 72.50320354520784)
    var hotelLocation = CLLocationCoordinate2D(latitude: 23.02704165876138, longitude: 72.50822388559817)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
        checkLocationServices()
        centerLocation()
        //cameraBoundry()
        addCustomAnnotation()
        showRouteOnMap(pickupLocation: officeLocation, deestinationLocation: hotelLocation)
    }
    
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled() {
            self.checkLocationAuth()
        }
    }
    
    func checkLocationAuth() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedAlways:
            break
        case .denied:
            break
        case .authorizedWhenInUse:
            mapView.showsUserLocation = true
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            mapView.showsUserLocation = true
            break
        default:
            break
        }
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.startUpdatingHeading()
    }
    
    func centerLocation() {
        let region = MKCoordinateRegion(center: officeLocation, latitudinalMeters: 500, longitudinalMeters: 500)
        mapView.setRegion(region, animated: true)
    }

    //zooming in and out
    /*func cameraBoundry() {
        let region = MKCoordinateRegion(center: officeLocation, latitudinalMeters: 500, longitudinalMeters: 500)
        mapView.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)

        let zoomRange = MKMapView.CameraZoomRange(minCenterCoordinateDistance: 200, maxCenterCoordinateDistance: 2000)
        mapView.setCameraZoomRange(zoomRange, animated: true)
    }*/
    
    func addCustomAnnotation() {
       
        let officeAnnotation = MKPointAnnotation()
        officeAnnotation.title = "Simform Solutions"
        officeAnnotation.subtitle = "Agile in mind, spirit, and speed."
        officeAnnotation.coordinate = CLLocationCoordinate2D(latitude: officeLocation.latitude, longitude: officeLocation.longitude)
        
        let hotelAnnotation = MKPointAnnotation()
        hotelAnnotation.title = "The Grand Thakar"
        hotelAnnotation.subtitle = "best place to eat"
        hotelAnnotation.coordinate = CLLocationCoordinate2D(latitude: hotelLocation.latitude, longitude: hotelLocation.longitude)
        mapView.addAnnotations([officeAnnotation, hotelAnnotation])
    }
    
    func showRouteOnMap(pickupLocation: CLLocationCoordinate2D, deestinationLocation: CLLocationCoordinate2D) {
        
        let request = MKDirections.Request()
        request.source = MKMapItem(placemark: MKPlacemark(coordinate: pickupLocation, addressDictionary: nil))
        request.destination = MKMapItem(placemark: MKPlacemark(coordinate: deestinationLocation, addressDictionary: nil))
        request.requestsAlternateRoutes = true
        request.transportType = [.automobile, .walking]
    
        let direction = MKDirections(request: request)
        direction.calculate { response, error in
            guard let responseOf = response else { return }
            if let route = responseOf.routes.first {
                self.mapView.addOverlay(route.polyline)
                self.mapView.setVisibleMapRect(route.polyline.boundingMapRect, edgePadding: UIEdgeInsets.init(top: 80, left: 20, bottom: 100, right: 20), animated: true)
            }
        }
    }
}

extension MapViewController: MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil
        }
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: "custom")
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "custom")
        } else {
            annotationView?.annotation = annotation
        }
        switch annotation.title {
        case "Simform Solutions":
            annotationView?.image = UIImage(systemName: "folder")
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
            imageView.image = UIImage(named: "facebook")
            annotationView?.rightCalloutAccessoryView = imageView
            break
        case "The Grand Thakar":
            annotationView?.image = UIImage(systemName: "homekit")
            annotationView?.rightCalloutAccessoryView = UIImageView(image: UIImage(systemName: "heart.fill"))
            break
        default:
            break
        }
        annotationView?.canShowCallout = true
        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(overlay: overlay)
        renderer.strokeColor = UIColor.red
        renderer.lineWidth = 2.0
        renderer.lineDashPattern = [5, 5]
        return renderer
    }
}

extension MapViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations)
    }
}


