package myapp

class CountryController {
    def scaffold = Country

    SearchCountryService searchCountryService

    int max = 5
    int offset = 0

    def search() {
        def result
        if (params.id == 'paginate') {
            offset = params.offset as int
            result = searchCountryService.searchCountry(flash.searchText as String, max, offset)
            flash.searchText = flash.searchText
            respond(countryList: result, countryName: flash.searchText, countryCount: result.getTotalCount(),
                    maxCount: max)
        } else {
            if (params.searchText != "")
                result = searchCountryService.searchCountry(params.searchText, max, offset)
            if (result == null || result.getTotalCount() == 0) {
                redirect(action: "searchFailed", params: params)
            } else {
                flash.searchText = params.searchText
                respond(countryList: result.asList(), countryName: params.searchText, countryCount: result.getTotalCount(),
                        maxCount: max)
            }
        }
    }

    def searchFailed() {
        respond(countryName: params.searchText)
    }
}
