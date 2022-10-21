package myapp

class SearchHotelController {
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    SearchHotelService searchHotelService

    int max = 5
    int offset = 0

    def index() {
        def result
        if (params.id == 'paginate') {
            offset = params.offset as int
            result = searchHotelService.searchHotelInCountry(flash.searchText as String, flash.countryId as String, max, offset)
            flash.searchText = flash.searchText
            flash.countryId = flash.countryId
            respond(hotelList: result.asList(), hotelName: flash.searchText, country: Country.get(flash.countryId as Serializable),
                    hotelCount: result.getTotalCount(), maxCount: max)

        } else {
            if (params.searchText != "")
                result = searchHotelService.searchHotelInCountry(params.searchText, params.countryId, max, offset)
            if (result == null || result.getTotalCount() == 0) {
                redirect(action: "notFound", params: params)
            } else {
                flash.searchText = params.searchText
                flash.countryId = params.countryId
                respond(hotelList: result.asList(), hotelName: params.searchText, country: Country.get(params.countryId),
                        hotelCount: result.getTotalCount(), maxCount: max)
            }
        }
    }

    def notFound() {
        respond(hotelName: params.searchText, 'country': Country.get(params.countryId))
    }
}
