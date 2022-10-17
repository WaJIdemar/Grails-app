package myapp

class SearchHotelController {
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    SearchHotelService searchHotelService

    def index() {
        def result
        if(params.searchText != "")
             result = searchHotelService.searchHotelInCountry(params.searchText, params.country.id)
        if (result == null || result.size() == 0) {
            redirect(action: "notFound")
        } else
            respond("hotelList": result, "searchText": params.searchText, "countryName": Country.get(params.country.id).name)
    }

    def notFound(){
        render(view: "notFound")
    }
}
