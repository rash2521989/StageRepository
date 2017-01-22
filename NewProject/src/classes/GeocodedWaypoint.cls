public class GeocodedWaypoint {

    private String geocoder_status;
    private String place_id;
    private List<String> types = new List<String>();
    private Boolean partial_match;
    private Map<String, Object> additional_properties = new Map<String, Object>();
    
    public string getGeocoderStatus() {
        return geocoder_status;
    }
    
    public void setGeocoderStatus(String geocoder_status) {
        this.geocoder_status = geocoder_status;
    }
    
    public String getPlaceId() {
        return place_id;
    }
    
    public void setPlaceId(String placeId) {
        this.place_id = placeId;
    }
    
    public List<String> getTypes() {
        return types;
    }


    public void setTypes(List<String> types) {
        this.types = types;
    }


    public Boolean getPartialMatch() {
        return partial_match;
    }

    public void setPartialMatch(Boolean partialMatch) {
        this.partial_match = partialMatch;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additional_properties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additional_properties.put(name, value);
    }

}