//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var color: String?
    var maxSpeed = 80
    func description() ->String{
        return "A\(self.color) vehicle"
    }
    
    func traval() {
        print("tracal at \(maxSpeed)kph")
    }
    
}

var redVehicle = Vehicle()
redVehicle.color = "red"
redVehicle.maxSpeed = 90
redVehicle.traval()
redVehicle.description()


class Car: Vehicle {
    override func description() -> String {
        let description = super.description()
        return description+"come from vehacal"
    }
}

var car = Car()
car.color = "blue"
car.maxSpeed = 100
car.traval()
car.description()

//init demo

class InitDemo{
    //指定的初始化器（也就是主初始化器）
    init(stext:String){
        print(stext)
    }
    
    //便捷初始化器，是调用上述制定的初始化器所必需的
    convenience init (text:String){
        self.init(stext: text) //这是必须的
        print("I was called with the conveniene initializer!")
    }
    //反初始化器 当对象将要销毁的时候调用
    deinit {
        print("i'm going away")
    }
}

var example :InitDemo?
//使用指定初始化器
example = InitDemo(text: "self init")
example = nil

//使用便捷初始化器
example = InitDemo(text: "hello")
//初始化一个可返回nil的对象
class Myobject{
    init(){
        print("Myobject init")
    }
    convenience init? (value:Int){
        if(value > 4){
            print("Myobject == nil")
            return nil;
        }
        self.init()
    }
    //在使用一个可以失败的初始化器时，任何可以在其中存储该结果的变量都是可选的。
}





