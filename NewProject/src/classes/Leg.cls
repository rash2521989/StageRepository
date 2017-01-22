public class Leg {

    private Distance distance;
    private Duration duration;
    private String end_address;
    private EndLocation end_location;
    private String start_address;
    private StartLocation start_location;
    private List<Step> steps = new List<Step>();
    private List<Object> traffic_speed_entry = new List<Object>();
    private List<Object> via_waypoint = new List<Object>();
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

    public String getEndAddress() {
        return end_address;
    }

    public void setEndAddress(String endAddress) {
        this.end_address = endAddress;
    }

    public EndLocation getEndLocation() {
        return end_location;
    }

    public void setEndLocation(EndLocation endLocation) {
        this.end_location = endLocation;
    }

    public String getStartAddress() {
        return start_address;
    }

    public void setStartAddress(String startAddress) {
        this.start_address = startAddress;
    }

    public StartLocation getStartLocation() {
        return start_location;
    }

    public void setStartLocation(StartLocation startLocation) {
        this.start_location = startLocation;
    }

    public List<Step> getSteps() {
        return steps;
    }

    public void setSteps(List<Step> steps) {
        this.steps = steps;
    }

    public List<Object> getTrafficSpeedEntry() {
        return traffic_speed_entry;
    }

    public void setTrafficSpeedEntry(List<Object> trafficSpeedEntry) {
        this.traffic_speed_entry = trafficSpeedEntry;
    }

    public List<Object> getViaWaypoint() {
        return via_waypoint;
    }

    public void setViaWaypoint(List<Object> viaWaypoint) {
        this.via_waypoint = viaWaypoint;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additional_properties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additional_properties.put(name, value);
    }

}