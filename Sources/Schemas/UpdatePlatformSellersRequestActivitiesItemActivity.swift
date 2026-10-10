import Foundation

public enum UpdatePlatformSellersRequestActivitiesItemActivity: String, Codable, Hashable, CaseIterable, Sendable {
    case immovableProperty = "immovable_property"
    case personalServices = "personal_services"
    case saleOfGoods = "sale_of_goods"
    case transportationRental = "transportation_rental"
}