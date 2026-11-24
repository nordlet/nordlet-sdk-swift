import Foundation

public enum QueueListReviewResponseItemsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case draftWarning = "draft_warning"
    case bankTransactionUnbooked = "bank_transaction_unbooked"
    case partnerVatInvalid = "partner_vat_invalid"
    case filingSettingsMissing = "filing_settings_missing"
    case fileUnattached = "file_unattached"
}