package myapp

class Hotel {
    static belongsTo = [country: Country]
    static constraints = {
        name(blank: false, maxSize: 255, unique: 'country')
        stardom(blank: false, max: 5, min: 1)
        website(url: true, blank: true, nullable: true)
    }
    String name
    int stardom
    String website

    String toString() {
        return name
    }
}
