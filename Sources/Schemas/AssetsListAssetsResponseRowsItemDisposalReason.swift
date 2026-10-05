import Foundation

public enum AssetsListAssetsResponseRowsItemDisposalReason: String, Codable, Hashable, CaseIterable, Sendable {
    case sold
    case scrapped
    case writtenOff = "written_off"
}