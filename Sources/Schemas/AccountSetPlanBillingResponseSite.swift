import Foundation

/// The site whose plan this is, from the `x-nordlet-site` header
public enum AccountSetPlanBillingResponseSite: String, Codable, Hashable, CaseIterable, Sendable {
    case app
    case invoice
}