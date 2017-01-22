public class Duration {

    
    private String text;
    private Integer value;
    private Map<String, Object> additional_properties = new Map<String, Object>();
    
    public String getText() {
        return text;
    }
    
    public void setText(String text) {
        this.text = text;
    }
    
    public Integer getValue() {
        return value;
    }
    
    public void setValue(Integer value) {
        this.value = value;
    }
    
    public Map<String, Object> getAdditionalProperties() {
    	return this.additional_properties;
    }
    
    public void setAdditionalProperty(String name, Object value) {
        this.additional_properties.put(name, value);
    }    
    
}