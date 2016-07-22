
import enum Jay.JSON
import enum C7.JSON

extension Jay.JSON {
    
    public func toC7JSON() -> C7.JSON {
        switch self {
        case .array(let items): return .array(items.map { $0.toC7JSON() })
        case .boolean(let bool): return .boolean(bool)
        case .null: return .null
        case .number(let number):
            switch number {
            case .double(let double): return .number(.double(double))
            case .integer(let integer): return .number(.integer(integer))
            case .unsignedInteger(let unsigned): return .number(.unsignedInteger(unsigned))
            }
        case .object(let object):
            var items: [String: C7.JSON] = [:]
            for (key, value) in object {
                items[key] = value.toC7JSON()
            }
            return .object(items)
        case .string(let string): return .string(string)
        }
    }
}

extension C7.JSON {
    
    public func toJayJSON() -> Jay.JSON {
        switch self {
        case .array(let items): return .array(items.map { $0.toJayJSON() })
        case .boolean(let bool): return .boolean(bool)
        case .null: return .null
        case .number(let number):
            switch number {
            case .double(let double): return .number(.double(double))
            case .integer(let integer): return .number(.integer(integer))
            case .unsignedInteger(let unsigned): return .number(.unsignedInteger(unsigned))
            }
        case .object(let object):
            var items: [String: Jay.JSON] = [:]
            for (key, value) in object {
                items[key] = value.toJayJSON()
            }
            return .object(items)
        case .string(let string): return .string(string)
        }
    }
}


