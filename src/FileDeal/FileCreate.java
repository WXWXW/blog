package FileDeal;


import java.io.File;
import java.io.IOException;

public class FileCreate {

   /* public static void main(String args[]){
        FileCreate fileCreate=new FileCreate();
        fileCreate.createhtml("/Posts/1.html","sdaf");
    }*/

    public int createhtml(String name ,String content){
        String filenametemp="G:\\java-workspace\\blog\\web\\"+name;
        System.out.println(filenametemp);
        File file = new File(filenametemp);
        System.out.println(file.getAbsolutePath());
        if(!file.exists()){
            try {
                file.createNewFile();
                System.out.println("创建成功!");
                FileOperate.writetext(file,content);
                return 1;
            }catch (IOException e){
                e.printStackTrace();
            }

        }
        return 0;
    }
}
