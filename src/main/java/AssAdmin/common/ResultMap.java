package AssAdmin.common;

import org.apache.commons.collections4.map.HashedMap;

import java.util.Map;

public class ResultMap {

    private boolean success;

    private String message;

    // 有时会回传一个新保存的 id
    private Long id;

    private Long extraLong = 0L;

    private boolean extraBoolean = false;

    public ResultMap(boolean success, String message) {
        this.success = success;
        this.message = message;
    }

    public ResultMap(boolean success, String message, Long id) {
        this(success, message);
        this.id = id;
    }

    public ResultMap(boolean success, String message, Long id, Long extraLong) {
        this(success, message, id);
        this.extraLong = extraLong;
    }

    public ResultMap(boolean success, String message, Long id, Long extraLong, boolean extraBoolean) {
        this(success, message, id, extraLong);
        this.extraBoolean = extraBoolean;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getExtraLong() {
        return extraLong;
    }

    public void setExtraLong(Long extraLong) {
        this.extraLong = extraLong;
    }

    public boolean isExtraBoolean() {
        return extraBoolean;
    }

    public void setExtraBoolean(boolean extraBoolean) {
        this.extraBoolean = extraBoolean;
    }

    public Map<String, Object> toMap() {
        Map<String, Object> map = new HashedMap<String, Object>();

        map.put("success", success);
        map.put("message", message);

        if (id != null && Long.valueOf(0L).equals(id) == false) {
            map.put("id", id);
        }

        return map;
    }
}
