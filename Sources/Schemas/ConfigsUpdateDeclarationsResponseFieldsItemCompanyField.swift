import Foundation

/// The company profile field the value is taken from; change it with `account/companies/update`
public enum ConfigsUpdateDeclarationsResponseFieldsItemCompanyField: String, Codable, Hashable, CaseIterable, Sendable {
    case code
    case vatCode
}