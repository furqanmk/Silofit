import UIKit
import GoogleMaps

final class MapViewController: UIViewController {
    // MARK: Properties
    let viewOutput: MapViewOutput
    
    private lazy var mapView: GMSMapView = {
        let mapView = GMSMapView(frame: view.frame)
        let bounds = viewOutput.spaces.reduce(GMSCoordinateBounds()) { bounds, space in
            bounds.includingCoordinate(CLLocationCoordinate2D(latitude: space.latitude,
                                                              longitude: space.longitude))
        }
        viewOutput.spaces.forEach { space in
            let marker = GMSMarker(position: CLLocationCoordinate2D(latitude: space.latitude,
                                                                    longitude: space.longitude))
            print(CLLocationCoordinate2D(latitude: space.latitude, longitude: space.longitude))
            marker.map = mapView
        }
        
        mapView.animate(with: GMSCameraUpdate.fit(bounds, withPadding: 60))
        return mapView
    }()

    // MARK: Initalizers
    init(viewOutput: MapViewOutput) {
    	self.viewOutput = viewOutput
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOutput.viewIsReady()
    }
    
    private func setupView() {
        view = mapView
    }
}

// MARK: Presenter To View Protocol
extension MapViewController: MapViewInput {
    func setupInitialState() {
        setupView()
    }
}
