import Foundation

public enum VatResolveReferenceRequestServiceKind: String, Codable, Hashable, CaseIterable, Sendable {
    case shortTermAccommodation = "short_term_accommodation"
    case passengerRoadTransport = "passenger_road_transport"
}