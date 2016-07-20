let x1 = 0
let y1 = 0

let coordinate1: (x: Int, y: Int) = (0, 0)
coordinate1.x

struct Point {
    let x: Int
    let y: Int
    
    init(x: Int, y: Int) {
        // x & y don't exist
        self.x = x
        self.y = y
    }
    
    // Instance method
    func surroundingPoints(withRange range: Int = 1) -> [Point] {
        var results: [Point] = []
        
        for xCoord in (x - range)...(x + range) {
            for yCoord in (y - range)...(y + range) {
                let coordinatePoint = Point(x: xCoord, y: yCoord)
                results.append(coordinatePoint)
            }
        }
        
        return results
    }
}

let coordinatePoint = Point(x: 0, y: 0)

let a = coordinatePoint.surroundingPoints(withRange: 1)
