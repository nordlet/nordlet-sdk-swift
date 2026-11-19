import Foundation

public enum UsDeGrossReceiptsGetDeclarationsRequestActivity: String, Codable, Hashable, CaseIterable, Sendable {
    case services
    case contractor
    case manufacturer
    case cleanEnergyDeviceManufacturer = "clean-energy-device-manufacturer"
    case automobileManufacturer = "automobile-manufacturer"
    case wholesaler
    case foodProcessor = "food-processor"
    case commercialFeedDealer = "commercial-feed-dealer"
    case retailer
    case restaurantRetailer = "restaurant-retailer"
    case farmMachineryRetailer = "farm-machinery-retailer"
    case grocerySupermarketRetailer = "grocery-supermarket-retailer"
}