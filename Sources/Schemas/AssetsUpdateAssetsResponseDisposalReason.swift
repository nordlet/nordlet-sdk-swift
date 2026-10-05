import Foundation

public enum AssetsUpdateAssetsResponseDisposalReason: String, Codable, Hashable, CaseIterable, Sendable {
    case sold
    case scrapped
    case writtenOff = "written_off"
}