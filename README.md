# CTSimplePing
A basic wrapper around [iOS Simple Ping](https://developer.apple.com/library/archive/samplecode/SimplePing/Introduction/Intro.html)

## Example Usaage

    import Foundation
    import CTSimplePing

    public typealias SimplePingClientCallback = (String?)->()

    public class SimplePingClient: NSObject {
        static let singletonPC = SimplePingClient()
    
        private var resultCallback: SimplePingClientCallback?
        private var pingClient: CTSimplePingClient?
        private var dateReference: NSDate?
    
        public static func pingHostname(hostname: String, andResultCallback callback: SimplePingClientCallback?) {
            singletonPC.pingHostname(hostname: hostname, andResultCallback: callback)
        }
    
        public func pingHostname(hostname: String, andResultCallback callback: SimplePingClientCallback?) {
            resultCallback = callback
            pingClient = CTSimplePingClient(hostName: hostname)
            pingClient?.delegate = self
            pingClient?.start()
        }
    }

    extension SimplePingClient: CTSimplePingDelegate {
    
        public func simplePing(_ pinger: CTSimplePingClient, didStartWithAddress address: Data) {
            pinger.sendPing(with: nil)
        }
    
        public func simplePing(_ pinger: CTSimplePingClient, didFailWithError error: Error) {
            resultCallback?(nil)
        }
    
        public func simplePing(pinger: CTSimplePingClient!, didSendPacket packet: NSData!) {
            dateReference = NSDate()
        }
    
        public func simplePing(pinger: CTSimplePingClient!, didFailToSendPacket packet: NSData!, error: NSError!) {
            pinger.stop()
            resultCallback?(nil)
        }
    
        public func simplePing(_ pinger: CTSimplePingClient, didReceiveUnexpectedPacket packet: Data) {
            pinger.stop()
            resultCallback?(nil)
        }
        
        public func simplePing(_ pinger: CTSimplePingClient, didReceivePingResponsePacket packet: Data, sequenceNumber: UInt16) {
            pinger.stop()
        
            guard let dateReference = dateReference else { return }
        
            //timeIntervalSinceDate returns seconds, so we convert to milis
            let latency = NSDate().timeIntervalSince(dateReference as Date) * 1000
            resultCallback?(String(format: "%.f", latency))
        }
    
        public func simplePing(_ pinger: CTSimplePingClient, didSendPacket packet: Data, sequenceNumber: UInt16) {
             dateReference = NSDate()
        }
    
        public func simplePing(_ pinger: CTSimplePingClient, didFailToSendPacket packet: Data, sequenceNumber: UInt16, error: Error) {
             pinger.stop()
             resultCallback?(nil)
        }
    
        public func simplePing(pinger: CTSimplePingClient!, didReceivePingResponsePacket packet: NSData!) {
            pinger.stop()
        
            guard let dateReference = dateReference else { return }
        
            //timeIntervalSinceDate returns seconds, so we convert to milis
            let latency = NSDate().timeIntervalSince(dateReference as Date) * 1000
            resultCallback?(String(format: "%.f", latency))
         }
    }


## Install

### [Swift Package Manager](https://swift.org/package-manager/) 

Add the `https://github.com/CleverTap/CTSimplePing` url to your project's Swift packages

### [CocoaPods](https://cocoapods.org)

```
 target 'YOUR_TARGET_NAME' do  
      pod 'CTSimplePing'  
  end 
```

### Manual

Download the `CTSimplePing.xcframework` included in this repository, drag it into your project and add it as an embedded framework in your build settings

