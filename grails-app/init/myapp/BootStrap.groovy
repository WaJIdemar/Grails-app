package myapp

class BootStrap {

    def init = { servletContext ->
        Country country = new Country(name: 'Russia', capital: 'Moscow')
        country.save()
        Country country1 = new Country(name: 'England', capital: 'London')
        country1.save()
        new Country(name: 'Japan', capital: 'Tokyo').save()
        new Country(name: 'German', capital: 'Berlin').save()
        new Country(name: 'France', capital: 'Paris').save()
        new Country(name: 'Poland', capital: 'Warsaw').save()
        new Country(name: 'Sweden', capital: 'Stockholm').save()
        new Hotel(name: 'Azimut', stardom: 4, country: country).save()
        new Hotel(name: 'Bronza', stardom: 5, country: country, website: 'https://bronzahouse.ru/').save()
        new Hotel(name: 'Azur', stardom: 4, country: country).save()
        new Hotel(name: 'Telegraph', stardom: 5, country: country1).save()
        new Hotel(name: 'Amsterdam', stardom: 4, country: country, website: 'https://amsterdam-hotel.site/').save()
        new Hotel(name: 'Lotte Hotel Samara', stardom: 5, country: country, website: 'https://www.lottehotel.com/samara-hotel/ru.html').save()
        new Hotel(name: 'Four Seasons', stardom: 3, country: country1, website: 'https://www.fourseasons.com/hampshire/?seo=google_local_ham1_emea').save()
        new Hotel(name: 'The Milestone Hotel and Residences', stardom: 4, country: country1).save()
    }
    def destroy = {
    }
}
