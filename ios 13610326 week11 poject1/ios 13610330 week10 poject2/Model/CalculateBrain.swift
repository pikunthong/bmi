

import UIKit

// kit แปลว่า ชุดเครื่องมือ
// UI แปลว่า User Interface ส่วนที่เกี่ยวกับการเชื่อมของผู้ใช้ เช่น ปุ่มกด

//  struct จะเป็นแบบ Pass by value คือ เหมือนก็อปปี้แยกกันคนละอัน แก้กับอันใดอันหนึ่งไม่ได้ผลกับอีกอัน
//  class จะเป็นแบบ Pass by Reference เหมือนก็อปปี้แยกกันคนละอัน แต่แก้กับอันใดอันหนึ่งจะมีผลกับอีกอัน

struct CalculateBrain {
//    var bmi: Float = 0.0 // 1 Value เก็บตัวเดียวนะ
    //ไม่ใช้แล้วนะ เพราะ ใช้ bmiStruct แทน
    var bmiStruct : BMI? // 3 Value เก็บสาสมตััวเป็นชุด (value , advice, color)
    // เครื่องหมายคำถาม คือ เป็นตัวแปลชนิด Optional คือ ตัวเลือกจะมีค่าหรือไม่มีค่าก็เป็นไปได้
    //ดังนั้นมันอาจจะไม่มีค่าก็ได้
    
    func getBMIValue() -> String {
//        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        let bmiTo1DecimalPlace = String(format: "%.1f", bmiStruct?.value ?? 0.0)
                                                        //ใช้ค่า value ?? = if ถ้าไม่มีค่า = 0.0
        
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmiStruct?.advice ?? "No Advice"
        
        //if แบบย่อ
        //ตัวแปรที่ต้องการดูค่า ว่ามีค่าหรือไม่ ?? ถ้าไม่มีค่าให้ใช้ค่าตรงนี้แทน
        //bmiStruct?.advice ?? "No Advice"
        //ตัวแปรที่ต้องการดูค่า ว่ามีค่าหรือไม่ = bmiStruct?.advice
        //ถ้าไม่มีค่าให้ใช้ค่าตรงนี้แทน
    }
    
    func getColor() -> UIColor {
            return bmiStruct?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        // bmi ตัวที่ใช้นี้ ไม่มี var หรือ let นำหน้า คือตัวที่เป็น Global var
        // ส่วน weight กับ height คือ ตัวที่ฟังก์ชั่นรับค่ามาในชื่อนั้น เป็น Local var
//        bmi = weight / (height*height)
        let bmiValueLocal =  weight / (height * height)
        
        if bmiValueLocal < 18.5 {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValueLocal < 24.9 {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Fit As a fiddle", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat less pies!", color: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))
        }//end else
            
        
    }//end fundtion calculateBMI
}//end struct CalculateBrain
