import Foundation

public protocol FiniteFlowWithOutput: Flow {
    
    associatedtype Output
    
    var didFinish: (Output) -> Void { get set }
    
}
