package JavaBean;

import java.util.Date;

public class Blog {
    private String url;
    private String title;
    private String time;
    private String blog;

    public String getUrl() {
        return url;
    }

    public String getTitle() {
        return title;
    }

    public String getTime() {
        return time;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getBlog() {
        return blog;
    }

    public void setBlog(String blog) {
        this.blog = blog;
    }
}
