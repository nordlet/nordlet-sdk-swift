import Foundation

/// Language of the PDF and of the e-mail the invoice is sent with; unset means the language asked for when the PDF is made
public enum InvoicesCreateSalesRequestLocale: String, Codable, Hashable, CaseIterable, Sendable {
    case en
    case lt
    case de
    case fr
    case es
    case it
    case pt
    case nl
    case pl
    case sv
    case da
    case no
    case fi
    case et
    case lv
    case cs
    case sk
    case hu
    case ro
    case bg
    case hr
    case sl
    case el
    case mt
    case `is`
    case ga
    case zh
    case ja
    case ar
    case hi
    case ru
    case tr
}