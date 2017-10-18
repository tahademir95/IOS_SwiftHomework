//1.Write a function that returns tuple.
func menu() -> (corba: String, yemek: String, tatli: String) {
    let corba = "Mercimek"
    let yemek = "Ka�arl� K�fte"
    let tatli = "K�nefe"
    return ( corba, yemek, tatli)
}

let menuAl = menu()
print("�orba: \(menuAl.corba), Yemek: \(menuAl.yemek), Tatl�: \(menuAl.tatli)")

//2.Write a function that returns tuple with parameter labels.
func harfNotu () -> (ogrenciIs�m: String, notu: String) {
	return("Taha", "a")
}
print("\(harfNotu().ogrenciIs�m) bu dersi \(harfNotu().notu) ile ile ge�er mi? :D")

//3.Write switch control that checks a tuple values and executes different cases.
let andOperation = (3,4)
switch andOperation {
case (0, 0):
    print("\(andOperation) sonucu 0 d�ner.")
case (1, 0):
    print("\(andOperation) sonucu 0 d�ner.")
case (0, 1):
    print("\(andOperation) sonucu 0 d�ner.")
case (_, 0):
    print("\(andOperation) sonucu 0 d�ner.")
case (0, _):
    print("\(andOperation) sonucu 0 d�ner.")
case (1, 1):
    print("\(andOperation) sonucu 1 d�ner.")
default:
    print("Yaln�zca 1 ve 0 de�erlerini girin.")
}
//4.Put the tuple type into typealias and use it in a function while returning.
typealias dersGe�Bilgi = (ogrenci: String, not: Int, gecti: Bool)
func derstenGe�timi() -> dersGe�Bilgi {
    let ogr: dersGe�Bilgi = (ogrenci: "Taha", not: 1, gecti: true)
    return ogr
}
let stu = derstenGe�timi()
print("\(stu.ogrenci), \(stu.not), \(stu.gecti)")
//5.Create an array with 5 elements, different country cities are preferred 
// &&
//6.Loop over the created array and process the elements using for loop.
func countryOfTurkey(){
	let countries = ["Istanbul", "Ankara", "Safranbolu", "�ank�r�", "�anakkale"]
	for country in countries {
		debugPrint(country)
	}
}

debugPrint(countryOfTurkey())