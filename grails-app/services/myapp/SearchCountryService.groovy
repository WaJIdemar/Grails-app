package myapp

import grails.gorm.transactions.Transactional

@Transactional
class SearchCountryService {

    List<Country> searchCountry(String countryName) {
        def countryList = Country.createCriteria()
        List<Country> result = countryList.list {
            ilike("name", "%${countryName}%")
            order("name")
        } as List<Country>

        return result

    }
}
