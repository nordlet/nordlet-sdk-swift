import Foundation

/// Checking or savings account; a US ACH file needs it
public enum MandatesCancelBankResponseAccountType: String, Codable, Hashable, CaseIterable, Sendable {
    case checking
    case savings
}