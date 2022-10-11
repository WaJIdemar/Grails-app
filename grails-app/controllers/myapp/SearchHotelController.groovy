package myapp

class SearchHotelController {
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        def country = Country.createCriteria()
        country = country.get {
            like("name", params.country.name)
        }
        def hotelList = Hotel.createCriteria()
        def result = hotelList.list {
            ilike("name", "%${params.searchText}%")
            and {
                eq("country", country)
            }
            order("stardom", "desc")
            order("name")
        }
        if (result.size() == 0) {
            render(view: "notFound")
        } else
            respond(result)
    }
}
