//1.Write a function that returns tuple.
func menu() -> (corba: String, yemek: String, tatli: String) {
    let corba = "Mercimek"
    let yemek = "Kaþarlý Köfte"
    let tatli = "Künefe"
    return ( corba, yemek, tatli)
}

let menuAl = menu()
print("Çorba: \(menuAl.corba), Yemek: \(menuAl.yemek), Tatlý: \(menuAl.tatli)")

//2.Write a function that returns tuple with parameter labels.
func harfNotu () -> (ogrenciIsým: String, notu: String) {
	return("Taha", "a")
}
print("\(harfNotu().ogrenciIsým) bu dersi \(harfNotu().notu) ile ile geçer mi? :D")

//3.Write switch control that checks a tuple values and executes different cases.
let andOperation = (3,4)
switch andOperation {
case (0, 0):
    print("\(andOperation) sonucu 0 döner.")
case (1, 0):
    print("\(andOperation) sonucu 0 döner.")
case (0, 1):
    print("\(andOperation) sonucu 0 döner.")
case (_, 0):
    print("\(andOperation) sonucu 0 döner.")
case (0, _):
    print("\(andOperation) sonucu 0 döner.")
case (1, 1):
    print("\(andOperation) sonucu 1 döner.")
default:
    print("Yalnýzca 1 ve 0 deðerlerini girin.")
}
//4.Put the tuple type into typealias and use it in a function while returning.
typealias dersGeçBilgi = (ogrenci: String, not: Int, gecti: Bool)
func derstenGeçtimi() -> dersGeçBilgi {
    let ogr: dersGeçBilgi = (ogrenci: "Taha", not: 1, gecti: true)
    return ogr
}
let stu = derstenGeçtimi()
print("\(stu.ogrenci), \(stu.not), \(stu.gecti)")
//5.Create an array with 5 elements, different country cities are preferred 
// &&
//6.Loop over the created array and process the elements using for loop.
func countryOfTurkey(){
	let countries = ["Istanbul", "Ankara", "Safranbolu", "Çankýrý", "Çanakkale"]
	for country in countries {
		debugPrint(country)
	}
}

debugPrint(countryOfTurkey())