import Jay
import enum C7.JSON

extension Jay {
    
    public func c7jsonFromData(_ data: [UInt8]) throws -> C7.JSON {
        return try self.jsonFromData(data).toC7JSON()
    }
    
    public func c7jsonFromReader(_ reader: Reader) throws -> C7.JSON {
        return try self.jsonFromReader(reader).toC7JSON()
    }
    
    public func dataFromC7Json(json: C7.JSON) throws -> [UInt8] {
        return try self.dataFromJson(json: json.toJayJSON())
    }
    
    public func dataFromC7Json(json: C7.JSON, output: JsonOutputStream) throws {
        return try self.dataFromJson(json: json.toJayJSON(), output: output)
    }
}
