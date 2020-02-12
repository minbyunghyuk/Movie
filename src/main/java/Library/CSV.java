package Library;

import com.board.domain.MovieVO;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class CSV {

    //상대경로로 수정
     private String Path = "./src/main/resources/CSV/imglist.csv";



    public String getPath() {
        return Path;
    }

    public List<String> readFromCsvFile(String separator, String fileName) {
        List<String[]> CSVList = new ArrayList<>();
        List<String> LinkList = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(fileName))) {
            String line = "";
            while ((line = reader.readLine()) != null) {
                String[] array = line.split(separator);
                CSVList.add(array);
            }
            for (int i = 0; i < CSVList.size(); i++) {
                String[] array = CSVList.get(i);
                LinkList.add(array[0]);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return LinkList;
    }

    public List<MovieVO> SetMovieimgLink(List<MovieVO> movieVOList, List<String> ImgList) {
        for (MovieVO movieVO : movieVOList) {
            for (String Imgtitle : ImgList) {
                if (Imgtitle.contains(movieVO.getTitle())) {
                    movieVO.setLink(Imgtitle);
                }
            }
        }
        return movieVOList;
    }

}
