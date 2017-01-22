public class Route {

    private Bounds bounds;
    private String copyrights;
    private List<Leg> legs = new List<Leg>();
    private OverviewPolyline overview_polyline;
    private String summary;
    private List<Object> warnings = new List<Object>();
    private List<Object> waypoint_order = new List<Object>();
    private Map<String, Object> additional_properties = new Map<String, Object>();

    public Bounds getBounds() {
        return bounds;
    }

    public void setBounds(Bounds bounds) {
        this.bounds = bounds;
    }

    public void setLegs(List<Leg> legs) {
        this.legs = legs;
    }

    public OverviewPolyline getOverviewPolyline() {
        return overview_polyline;
    }

    public void setOverviewPolyline(OverviewPolyline overviewPolyline) {
        this.overview_polyline = overviewPolyline;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public List<Object> getWarnings() {
        return warnings;
    }

    public void setWarnings(List<Object> warnings) {
        this.warnings = warnings;
    }

    public List<Object> getWaypointOrder() {
        return waypoint_order;
    }

    public void setWaypointOrder(List<Object> waypointOrder) {
        this.waypoint_order = waypointOrder;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additional_properties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additional_properties.put(name, value);
    }

}