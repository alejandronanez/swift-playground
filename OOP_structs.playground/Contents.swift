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

class Enemy {
    var life: Int = 2
    let position: Point
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseHealth(factor: Int) {
        life -= factor
    }
}

class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func fireAtEnemy(enemy: Enemy) {
        if inRange(self.position, range: self.range, target: enemy.position) {
            while enemy.life > 0 {
                enemy.decreaseHealth(self.strength)
                print("Enemy vanquished")
            }
        } else {
            print("The enemy is out of range")
        }
    }
    
    func inRange(position: Point, range: Int, target: Point) -> Bool {
        let availablePositions = position.surroundingPoints(withRange: range)
        
        for point in availablePositions {
            if (point.x == target.x) && (point.y == target.y) {
                return true
            }
        }
        
        return false
    }
}

let tower = Tower(x: 0, y: 0)
let enemy = Enemy(x: 1, y: 1)

tower.fireAtEnemy(enemy)









