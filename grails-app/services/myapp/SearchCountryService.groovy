package myapp

import grails.gorm.PagedResultList
import grails.gorm.transactions.Transactional

@Transactional
class SearchCountryService {

    PagedResultList searchCountry(String countryName, int max, int offset) {
        def countryList = Country.createCriteria()
        PagedResultList result = countryList.list (max: max, offset: offset) {
            ilike("name", "%${countryName}%")
            order("name")
        } as PagedResultList

        return result

    }
}
