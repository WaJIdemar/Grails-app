package myapp

class HotelController {
    def scaffold = Hotel
    SearchHotelService searchHotelService

    int max = 5
    int offset = 0

    def search(){
        def result
        if (params.id == 'paginate') {
            offset = params.offset as int
            result = searchHotelService.searchHotel(flash.searchText as String, max, offset)
            flash.searchText = flash.searchText
            respond(hotelList: result.asList(), hotelName: flash.searchText, hotelCount: result.getTotalCount(),
                    maxCount: max)
        }
        else {
            if (params.searchText != "")
                result = searchHotelService.searchHotel(params.searchText, max, offset)
            if (result == null || result.getTotalCount() == 0) {
                redirect(action: "searchFailed", params: params)
            } else {
                flash.searchText = params.searchText
                respond(hotelList: result.asList(), hotelName: params.searchText, hotelCount: result.getTotalCount(),
                        maxCount: max)
            }
        }
    }

    def searchFailed(){
        respond(hotelName: params.searchText)
    }
}
