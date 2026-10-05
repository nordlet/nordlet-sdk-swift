import Foundation

public enum LtSaftGenerateDeclarationsRequestDataType: String, Codable, Hashable, CaseIterable, Sendable {
    case f = "F"
    case gl = "GL"
    case si = "SI"
    case pi = "PI"
    case pa = "PA"
    case mg = "MG"
    case `as` = "AS"
}