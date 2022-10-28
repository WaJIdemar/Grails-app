package myapp

class HotelController {
    def scaffold = Hotel
    SearchHotelService searchHotelService

    int max = 10

    def search() {
        def result
        int offset = 0
        if (params.id == 'paginate') {
            offset = params.offset as int
            result = searchHotelService.searchHotelInCountry(flash.searchText as String, flash.countryId as String, max, offset)
            flash.searchText = flash.searchText
            flash.countryId = flash.countryId
            respond(hotelList: result.asList(), hotelName: flash.searchText, country: Country.get(flash.countryId as Serializable),
                    hotelCount: result.getTotalCount(), maxCount: max)

        } else {
            result = searchHotelService.searchHotelInCountry(params.searchText, params.countryId, max, offset)
            if (result == null || result.getTotalCount() == 0) {
                redirect(action: "searchFailed", params: params)
            } else {
                flash.searchText = params.searchText
                flash.countryId = params.countryId
                respond(hotelList: result.asList(), hotelName: params.searchText, country: Country.get(params.countryId),
                        hotelCount: result.getTotalCount(), maxCount: max)

            }
        }
    }

    def searchFailed() {
        respond(hotelName: params.searchText, country: Country.get(params.countryId))
    }
}
