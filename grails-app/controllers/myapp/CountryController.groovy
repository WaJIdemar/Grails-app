package myapp

class CountryController {
    def scaffold = Country

    SearchCountryService searchCountryService

    def search(){
        def result
        if (params.searchText != "")
            result = searchCountryService.searchCountry(params.searchText)
        if (result == null || result.size() == 0) {
            redirect(action: "searchFailed", params: params)
        } else
            respond("countryList": result, "searchText": params.searchText)
    }
    def searchFailed(){
        respond(searchText: params.searchText)
    }
}
