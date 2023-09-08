class LocalFile {
    //stored properties are name and fileExtension
    let name: String
    let fileExtension:String
    init(name:String, fileExtension: String) {
        self.name = name
        self.fileExtension = fileExtension
    }
    //fullNameFile is computed property
    var fullNameFile :String {
        return name + "." + fileExtension
    }
}

let fileImg = LocalFile(name: "Matcha", fileExtension: "png")
print(fileImg.fullNameFile)
struct LocalFilex{
    let name: String
    var fileExtension:String
    var fullNamefile: String{
        return name + "." + fileExtension
    }
}


