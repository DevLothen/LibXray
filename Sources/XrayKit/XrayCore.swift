import Foundation
import LibXray
    
public enum XrayCore {
    public static func convertShareLinksToXrayJson(base64Text: String) -> String? {
        return base64Text.withCString { cString in
            if let result = CGoConvertShareLinksToXrayJson(UnsafeMutablePointer(mutating: cString)) {
                let resultString = String(cString: result)
                free(UnsafeMutablePointer(mutating: result))
                return resultString
            } else {
                return nil
            }
        }
    }

    public static func convertXrayJsonToShareLinks(base64Text: String) -> String? {
        return base64Text.withCString { cString in
            if let result = CGOConvertXrayJsonToShareLinks(UnsafeMutablePointer(mutating: cString)) {
                let resultString = String(cString: result)
                free(UnsafeMutablePointer(mutating: result))
                return resultString
            } else {
                return nil
            }
        }
    }

    public static func getFreePorts(count: Int) -> String? {
        let countString = String(count)
        return countString.withCString { cString in
            if let result = CGoGetFreePorts(Int32(count)) {
                let resultString = String(cString: result)
                free(UnsafeMutablePointer(mutating: result))
                return resultString
            } else {
                return nil
            }
        }
    }

    public static func loadGeoData(base64Text: String) -> String? {
        return base64Text.withCString { cString in
            if let result = CGoLoadGeoData(UnsafeMutablePointer(mutating: cString)) {
                let resultString = String(cString: result)
                free(UnsafeMutablePointer(mutating: result))
                return resultString
            } else {
                return nil
            }
        }
    }

    public static func ping(base64Text: String) -> String? {
        return base64Text.withCString { cString in
            if let result = CGoPing(UnsafeMutablePointer(mutating: cString)) {
                let resultString = String(cString: result)
                free(UnsafeMutablePointer(mutating: result))
                return resultString
            } else {
                return nil
            }
        }
    }

    public static func queryStats(base64Text: String) -> String? {
        return base64Text.withCString { cString in
            if let result = CGoQueryStats(UnsafeMutablePointer(mutating: cString)) {
                let resultString = String(cString: result)
                free(UnsafeMutablePointer(mutating: result))
                return resultString
            } else {
                return nil
            }
        }
    }

    public static func customUUID(base64Text: String) -> String? {
        return base64Text.withCString { cString in
            if let result = CGoCustomUUID(UnsafeMutablePointer(mutating: cString)) {
                let resultString = String(cString: result)
                free(UnsafeMutablePointer(mutating: result))
                return resultString
            } else {
                return nil
            }
        }
    }

    public static func testXray(base64Text: String) -> String? {
        return base64Text.withCString { cString in
            if let result = CGoTestXray(UnsafeMutablePointer(mutating: cString)) {
                let resultString = String(cString: result)
                free(UnsafeMutablePointer(mutating: result))
                return resultString
            } else {
                return nil
            }
        }
    }

    public static func runXray(base64Text: String) -> String? {
        return base64Text.withCString { cString in
            if let result = CGoRunXray(UnsafeMutablePointer(mutating: cString)) {
                let resultString = String(cString: result)
                free(UnsafeMutablePointer(mutating: result))
                return resultString
            } else {
                return nil
            }
        }
    }

    public static func stopXray() -> String? {
        if let result = CGoStopXray() {
            let resultString = String(cString: result)
            free(UnsafeMutablePointer(mutating: result))
            return resultString
        } else {
            return nil
        }
    }

    public static func xrayVersion() -> String? {
        if let result = CGoXrayVersion() {
            let resultString = String(cString: result)
            free(UnsafeMutablePointer(mutating: result))
            return resultString
        } else {
            return nil
        }
    }
}

