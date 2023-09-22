import Foundation
import CoreImage

public struct FilterHue : Filtering, Equatable, Codable {
  
  public static let range: ParameterRange<Double, FilterHue> = .init(min: -1.8, max: 1.8)
  
  public var value: Double = 0
  
  public init() {
    
  }
  
  public func apply(to image: CIImage, sourceImage: CIImage) -> CIImage {
    return
      image
        .applyingFilter(
          "CIHueAdjust",
          parameters: [
            kCIInputAngleKey: value
          ]
    )
  }
  
}
