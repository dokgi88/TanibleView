//
//  TanibleView.swift
//  TanibleView
//
//  Created by soom on 17/04/2019.
//

public class TanibleView: UITableView {
    
    // MARK: - Properties
    
    public var direction: TanibleViewDirection = .top
    public var duration: TimeInterval = 1.6
    public var delay: TimeInterval = 0.06
    public var springDamping: CGFloat = 0.6
    public var springValocity: CGFloat = 0.1
    public var isEnabled: Bool = true
    public var isFadeIn: Bool = false
    
    // MARK: - Con(De)structor
    
    convenience init() {
        self.init(frame: .zero)
        
        alpha = 0
    }
    
    // MARK: - Overridden: UITableView
    
    override public func draw(_ rect: CGRect) {
        super.draw(rect)
        
        animatable()
    }
    
    // MARK: - Public Method
    
    public func animatable(_ animationDirection: TanibleViewDirection? = nil) {
        if let direction = animationDirection {
            self.direction = direction
        }
        
        alpha = 1
        guard isEnabled else {return}
        reloadData()
        
        let cells = visibleCells
        var translationX: CGFloat = 0
        var translationY: CGFloat = 0
        
        switch direction {
        case .top:
            translationY = bounds.size.height
        case .left:
            translationX = -bounds.size.width
        case .right:
            translationX = bounds.size.width
        case .bottom:
            translationY = -bounds.size.height
        case .inPlaceFadeIn:
            isFadeIn = true
            duration = 3
            delay = 0.16
        default:
            isFadeIn = true
        }
        
        guard direction != .bottom, direction != .inPlaceFadeInBottom else {
            for (cell, index) in zip(cells, (0..<cells.count).reversed()) {
                translationY = direction == .inPlaceFadeInBottom ? -cell.bounds.size.height : translationY
                animatable(cell: cell, index: index, x: translationX, y: translationY)
            }
            return
        }
        
        for (cell, index) in zip(cells, 0..<cells.count) {
            translationY = direction == .inPlaceFadeInTop ? cell.bounds.size.height : translationY
            animatable(cell: cell, index: index, x: translationX, y: translationY)
        }
    }
    
    public func reload() {
        reloadData()
        animatable()
    }
    
    // MARK: - Private Method
    
    private func animatable(cell: UITableViewCell, index: Int, x: CGFloat, y: CGFloat) {
        cell.alpha = isFadeIn ? 0 : 1
        cell.transform = CGAffineTransform(translationX: x, y: y)
        
        UIView.animate(withDuration: duration, delay: delay * Double(index), usingSpringWithDamping: springDamping, initialSpringVelocity: springValocity, options: [.curveLinear], animations: {
            cell.alpha = 1
            cell.transform = CGAffineTransform.identity
        })
    }
    
}
