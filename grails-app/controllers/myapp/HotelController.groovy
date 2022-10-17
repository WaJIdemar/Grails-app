package myapp

class HotelController {
    def scaffold = Hotel
    SearchHotelService searchHotelService

    def search(){
        def result
        if (params.searchText != "")
            result = searchHotelService.searchHotel(params.searchText)
        if (result == null || result.size() == 0) {
            redirect(action: "searchFailed", params: params)
        } else
            respond("hotelList": result, "searchText": params.searchText)
    }

    def searchFailed(){
        respond(searchText: params.searchText)
    }
}
