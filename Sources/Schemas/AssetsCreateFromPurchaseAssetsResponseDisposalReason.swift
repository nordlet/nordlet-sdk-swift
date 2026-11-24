import Foundation

public enum AssetsCreateFromPurchaseAssetsResponseDisposalReason: String, Codable, Hashable, CaseIterable, Sendable {
    case sold
    case scrapped
    case writtenOff = "written_off"
}