import Foundation

public enum PostV1DeclarationsAnnualAccountsSetResponseSignaturesItemDirectorType: String, Codable, Hashable, CaseIterable, Sendable {
    case managingCurrent = "managing_current"
    case managingFormer = "managing_former"
    case supervisoryCurrent = "supervisory_current"
    case supervisoryFormer = "supervisory_former"
}