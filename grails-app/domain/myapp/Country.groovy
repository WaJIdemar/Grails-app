package myapp

class Country {
    static hasMany = [hotels: Hotel]
    static constraints = {
        name(blank: false, maxSize: 255, unique: true)
        capital(blank: false, maxSize: 128)
        hotels(display: false)
    }
    String name
    String capital

    String toString(){
        return name;
    }
}

