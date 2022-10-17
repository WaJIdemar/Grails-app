package myapp

import grails.gorm.transactions.Transactional

@Transactional
class SearchHotelService {

    List<Hotel> searchHotelInCountry(String hotelName,String countryId) {
        def country = Country.get(countryId)
        def hotelList = Hotel.createCriteria()
        List<Hotel> result = hotelList.list {
            ilike("name", "%${hotelName}%")
            and {
                eq("country", country)
            }
            order("stardom", "desc")
            order("name")
        } as List<Hotel>

        return result 
    }

    List<Hotel> searchHotel(String hotelName){
        def hotelList = Hotel.createCriteria()
        List<Hotel> result = hotelList.list {
            ilike("name", "%${hotelName}%")
            order("stardom", "desc")
            order("name")
        } as List<Hotel>

        return result
    }
}
