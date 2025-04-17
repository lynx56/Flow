import Foundation

public class AnyFiniteFlow<TOutput>: FiniteFlowWithOutput {
    
    private let startViewControllerCreator: () -> UIViewController
    private let flowDidFinish: (@escaping (TOutput) -> Void) -> Void
    
    public var didFinish: (TOutput) -> Void = { _ in } {
        didSet {
            flowDidFinish(didFinish)
        }
    }
    
    public init<TFlow: FiniteFlowWithOutput>(flow: TFlow) where TFlow.Output == Output {
        flowDidFinish = {
            flow.didFinish = $0
        }
        self.startViewControllerCreator = flow.startViewController
    }
    
    public init<TFlow: FiniteFlowWithOutput>(flow: TFlow, mapper: @escaping (TFlow.Output) -> Output){
        flowDidFinish = { didFinish in
            flow.didFinish = {
                didFinish(mapper($0))
            }
        }
        self.startViewControllerCreator = flow.startViewController
    }
    
    public func startViewController() -> UIViewController {
        return startViewControllerCreator()
    }
    
}
