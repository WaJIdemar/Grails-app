package myapp

class BootStrap {

    def init = { servletContext ->
        Country country = new Country(name: 'Russia', capital: 'Moscow')
        country.save()
        Country country1 = new Country(name: 'England', capital: 'London')
        country1.save()
        Country country2 = new Country(name: 'Japan', capital: 'Tokyo')
        country2.save()
        Country country3 = new Country(name: 'German', capital: 'Berlin')
        country3.save()
        new Country(name: 'France', capital: 'Paris').save()
        new Country(name: 'Poland', capital: 'Warsaw').save()
        new Country(name: 'Sweden', capital: 'Stockholm').save()
        new Country(name: 'Uruguay', capital: 'Montevideo').save()
        new Country(name: 'Chine', capital: 'Beijing').save()
        new Country(name: 'Finland', capital: 'Helsinki').save()
        new Country(name: 'Brazil', capital: 'Brasilia').save()
        new Country(name: 'Canada', capital: 'Ottawa').save()
        new Country(name: 'Egypt', capital: 'Cairo').save()
        new Hotel(name: 'Azimut', stardom: 4, country: country).save()
        new Hotel(name: 'Bronza', stardom: 5, country: country, website: 'https://bronzahouse.ru/').save()
        new Hotel(name: 'Azur', stardom: 4, country: country).save()
        new Hotel(name: 'Telegraph', stardom: 5, country: country1).save()
        new Hotel(name: 'Amsterdam', stardom: 4, country: country, website: 'https://amsterdam-hotel.site/').save()
        new Hotel(name: 'Lotte Hotel Samara', stardom: 5, country: country, website: 'https://www.lottehotel.com/samara-hotel/ru.html').save()
        new Hotel(name: 'Four Seasons', stardom: 3, country: country1, website: 'https://www.fourseasons.com/hampshire/?seo=google_local_ham1_emea').save()
        new Hotel(name: 'The Milestone Hotel and Residences', stardom: 4, country: country1).save()
        new Hotel(name: 'HAMACHO HOTEL', stardom: 5, country: country2).save()
        new Hotel(name: 'Leo Yu Capsule Hotel', stardom: 3, country: country2).save()
        new Hotel(name: 'Hotel Sunplaza II', stardom: 4, country: country2, website: 'http://junon-hotels.com/sunplaza2/').save()
        new Hotel(name: 'Karl August', stardom: 4, country: country3).save()
        new Hotel(name: 'Grand Hyatt Berlin', stardom: 5, country: country3).save()

    }
    def destroy = {
    }
}
