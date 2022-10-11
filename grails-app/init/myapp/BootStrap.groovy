package myapp

class BootStrap {

    def init = { servletContext ->
        Country country = new Country(name: 'Russia', capital: 'Moscow')
        country.save()
        Country country1 = new Country(name: 'England', capital: 'London')
        country1.save()
        new Hotel(name: 'Azimut', stardom: '4', country: country).save()
        new Hotel(name: 'Bronza', stardom: '5', country: country, website: 'https://bronzahouse.ru/').save()
        new Hotel(name: 'Azur', stardom: '4', country: country).save()
        new Hotel(name: 'Telegraph', stardom: '5', country: country1).save()
    }
    def destroy = {
    }
}
