import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

import static sun.util.locale.LocaleUtils.isEmpty;

public class MergeName {
    public static void main(String[] args){
        try(var fileA = Files.newBufferedReader(Paths.get("C:\\PlacticeTxtFiles\\a.txt"));
            var fileB = Files.newBufferedReader(Paths.get("C:\\PlacticeTxtFiles\\b.txt"));
            var fileC = Files.newBufferedWriter(Paths.get("C:\\PlacticeTxtFiles\\c.txt"), StandardCharsets.UTF_8)){
            var lineA = fileA.readLine();
            var lineB = fileB.readLine();
            int toDo;
            int keyA = Integer.parseInt(lineA.substring(0,2));
            int keyB = Integer.parseInt(lineB.substring(0,2));

            while(!(keyA == 999 && keyB == 999)){
                if(keyA < keyB) toDo = 1;
                else if(keyA > keyB) toDo = 2;
                else toDo = 3;

                switch(toDo){
                    case 1: fileC.write(lineA +"\r\n");
                            lineA = fileA.readLine();
                            keyA = Integer.parseInt(lineA.substring(0,2));
                            break;

                    case 2: fileC.write(lineB +"\r\n");
                            lineB = fileB.readLine();
                            keyB = Integer.parseInt(lineB.substring(0,2));
                            break;

                    case 3: fileC.write(lineA +"\r\n");
                            fileC.write(lineB +"\r\n");
                            lineA = fileA.readLine();
                            lineB = fileB.readLine();
                            keyA = Integer.parseInt(lineA.substring(0,2));
                            keyB = Integer.parseInt(lineB.substring(0,2));
                            break;

                    default: break;
                }
                if(isEmpty(lineA = fileA.readLine())) keyA = 999;
                if(isEmpty(lineB)) keyB = 999;
            }
            fileA.close();
            fileB.close();
            fileC.close();
            System.out.print("終了");
        }catch(IOException e){
            e.printStackTrace();
        }
    }
}
