public class Step {

    private Distance distance;
    private Duration duration;
    private EndLocation end_location;
    private String html_instructions;
    private Polyline polyline;
    private StartLocation start_location;
    private String travel_mode;
    private String maneuver;
    private Map<String, Object> additional_properties = new Map<String, Object>();

    public Distance getDistance() {
        return distance;
    }

    public void setDistance(Distance distance) {
        this.distance = distance;
    }

    public Duration getDuration() {
        return duration;
    }

    public void setDuration(Duration duration) {
        this.duration = duration;
    }

    public EndLocation getEndLocation() {
        return end_location;
    }

    public void setEndLocation(EndLocation endLocation) {
        this.end_location = endLocation;
    }

    public String getHtmlInstructions() {
        return html_instructions;
    }

    public void setHtmlInstructions(String htmlInstructions) {
        this.html_instructions = htmlInstructions;
    }

    public Polyline getPolyline() {
        return polyline;
    }

    public void setPolyline(Polyline polyline) {
        this.polyline = polyline;
    }

    public StartLocation getStartLocation() {
        return start_location;
    }

    public void setStartLocation(StartLocation startLocation) {
        this.start_location = startLocation;
    }

    public String getTravelMode() {
        return travel_mode;
    }

    public void setTravelMode(String travelMode) {
        this.travel_mode = travelMode;
    }

    public String getManeuver() {
        return maneuver;
    }

    public void setManeuver(String maneuver) {
        this.maneuver = maneuver;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additional_properties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additional_properties.put(name, value);
    }

}