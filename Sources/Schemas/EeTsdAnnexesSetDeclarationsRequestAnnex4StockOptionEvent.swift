import Foundation

/// `sale`: the option was sold (4081 – 4083); `exercise`: the shares were acquired (4081 – 4082 – 4083)
public enum EeTsdAnnexesSetDeclarationsRequestAnnex4StockOptionEvent: String, Codable, Hashable, CaseIterable, Sendable {
    case sale
    case exercise
}