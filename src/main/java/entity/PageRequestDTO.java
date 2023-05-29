package entity;

/**
 * @author coli
 * @date 2023/5/28 下午 7:29
 */
public class PageRequestDTO {
    private int page = 0; // 默认从第一页开始
    private int size = 6; // 每页记录数默认为8

    // Getters and setters

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }
}
