import Foundation

public protocol FiniteFlow: Flow {

    var didFinish: () -> Void { get set }
    
}
