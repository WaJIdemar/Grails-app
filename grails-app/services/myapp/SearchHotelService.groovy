package myapp

import grails.gorm.PagedResultList
import grails.gorm.transactions.Transactional

@Transactional
class SearchHotelService {
    PagedResultList searchHotelInCountry(String hotelName, String countryId, int max, int offset) {
        def country = Country.get(countryId)
        def hotelList = Hotel.createCriteria()
        PagedResultList result = hotelList.list(max: max, offset: offset) {
            ilike("name", "%${hotelName}%")
            if (country) {
                and {
                    eq("country", country)
                }
            }
            order("stardom", "desc")
            order("name")
        } as PagedResultList

        return result
    }
}
