import Foundation

/// Language of the PDF and of the e-mail the invoice is sent with; unset means the language asked for when the PDF is made
public enum InvoicesCreateSalesRequestLocale: String, Codable, Hashable, CaseIterable, Sendable {
    case en
    case lt
    case de
}