
class overloadFunctionExample
{    
    func overload(ad: String) -> String
    {
        let overStr = "Isminiz : " + ad
        return "\(overStr)"
    }
    
    func overload(sene: Int) -> String
    {
        let dogum = "Dogum Yýlýnýz : " + String(sene)
        return "\(dogum)"
    }
}


let example1 = overloadFunctionExample()
        
let example1_1 = example1.overload(ad: "Taha")
debugPrint(example1_1)

let example1_2 = example1.overload(sene: 1995)
debugPrint(example1_2)
       

class defaultParameterValueExample {
	func iosLecture(cevap: String, onayAl: String = "Yemek yemek istermisinz?")
    {
        debugPrint("\(onayAl): \(cevap)")
    }
}

let example2 = defaultParameterValueExample()

example2.iosLecture(cevap: "Hayýr")
example2.iosLecture(cevap: "Evet", onayAl: "Içecek birsey istermisiniz?")

class variadicParameterExample {
	func sayýAl(sayý: Int ..., defaultDeger: String = "Girdiginiz sayilar : ")
    {      
        debugPrint("\(defaultDeger) \(sayý)")
    }
}

let example3 = variadicParameterExample()

example3.sayýAl(sayý: 3,4,5)


class ignoredExternalParameterExample{
	func ignoredExample(_ avg: Int, _: String) 
	{
		if (avg  >= 60)
		{
			debugPrint("Dersten geçtiniz")
		}
		else 
		{
			debugPrint("Bir dahaki dönem yine birlikteyiz :D")
		}
	}	
}

let example4 = ignoredExternalParameterExample()

example4.ignoredExample(72, "Buranin bi etkisi yok")
example4.ignoredExample(55, "Ama burayi eklemezsen hata verir..")


func functionInsideFunction(_ h: Int, _ w: Int) {
    
    func printAreaOfREctangle() {
		let a = h * w
        print("Area: \(a)")
    }
    printAreaOfREctangle()
}
functionInsideFunction(4, 5)


func recursiveFunctionExample(_ deger: Int) {
    debugPrint(deger)
    if deger > 1 {
        recursiveFunctionExample(deger - 1)
    }
}

recursiveFunctionExample(5)

typealias typealiasExample = (Int, Int) -> Int

let multiplyTwoNumbers: typealiasExample = { deger1, deger2 in
    return deger1 * deger2
}

debugPrint("Sonuc  : \(multiplyTwoNumbers(4,5))")

func additionNumbers(getNumbers: (_ a: Int, _ b:Int) -> ()) {
    getNumbers(4, 5)
}
additionNumbers(getNumbers: { a, b in debugPrint(a + b) })

