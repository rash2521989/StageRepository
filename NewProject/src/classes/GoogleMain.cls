public class GoogleMain {

    private List<GeocodedWaypoint> geocoded_waypoints = new List<GeocodedWaypoint>();
    private List<Route> routes = new List<Route>();
    private String status;

    public List<GeocodedWaypoint> getGeocodedWaypoints() {
        return geocoded_waypoints;
    }

    public void setGeocodedWaypoints(List<GeocodedWaypoint> geocodedWaypoints) {
        this.geocoded_waypoints = geocodedWaypoints;
    }

    public List<Route> getRoutes() {
        return routes;
    }

    public void setRoutes(List<Route> routes) {
        this.routes = routes;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}