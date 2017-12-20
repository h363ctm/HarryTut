import MetalKit

class MetalView: MTKView {

    var renderer: Renderer!
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        
        self.device = MTLCreateSystemDefaultDevice()
        
        self.colorPixelFormat = .bgra8Unorm
        
        self.clearColor = MTLClearColor(red: 0.25, green: 1.57, blue: 0.39, alpha: 1)
        
        renderer = Renderer(device: device!)
        
        self.delegate = renderer
        
    }
    
    
}
