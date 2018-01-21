package FileDeal;


import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class FileOperate {

            public static List<String> readtext(File file){
                String encoding="UTF-8";
                List<String> txtValueList=new ArrayList<String>();
                try {
                    if(file.exists()&&file.canRead()){
                        InputStreamReader read = new InputStreamReader(new FileInputStream(file),encoding);
                        BufferedReader bufferedReader = new BufferedReader(read);
                        String lineTxt = null;
                        while ((lineTxt = bufferedReader.readLine()) != null ) {
                            txtValueList.add(lineTxt);
                        }
                        if (read != null) {
                            read.close();
                        }
                    }
                }catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                return txtValueList;
            }

            public static void writetext(File file,String content){

                StringBuffer stringHtml=new StringBuffer(1000);


                stringHtml.append("<!DOCTYPE html>");
                stringHtml.append("<html lang=\"en\">");
                stringHtml.append("<head>");
                stringHtml.append("<meta charset=\"UTF-8\">");
                stringHtml.append("<title>Title</title>");
                stringHtml.append("</head>");
                stringHtml.append("<body>");
                stringHtml.append(content);
                stringHtml.append("</body>");
                stringHtml.append("</html>");
                String temp= stringHtml.toString();

                try {
                    if (file.exists() && file.canWrite()) {
                        FileWriter fileWriter=new FileWriter(file);
                        fileWriter.write(temp);
                        fileWriter.close();
                    }
                }catch ( IOException e){
                    e.printStackTrace();
                }
            }
}