import Foundation

public enum RecognitionRunSalesResponseTrigger: String, Codable, Hashable, CaseIterable, Sendable {
    case manual
    case scheduleDue = "schedule_due"
    case periodClose = "period_close"
    case deliveryAct = "delivery_act"
    case progress
    case modification
}