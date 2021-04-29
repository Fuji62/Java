import java.util.Calendar;
public class CalendarAPI {
    public static void main(String[] args){
        Calendar calendar = Calendar.getInstance();

        int year = calendar.get(Calendar.YEAR);   //今日の西暦を取得
        int month = calendar.get(Calendar.MONTH); //今日の月を取得

        calendar.set(year, month, 1); //今月の開始曜日を取得
        int startWeek = calendar.get(Calendar.DAY_OF_WEEK);

        calendar.set(year, month, 0); //今月の最終日を取得
        int lastDate = calendar.get(Calendar.DATE) -1;

        int[] calendarDate = new int[42]; //今月分の日数を配列に格納する
        int k = 0;
        for(; k < startWeek - 1; k++) calendarDate[k] = 0; //前月日分は0で埋める
        for(int i = 0; i < (41 - k); i++) {
            if (i < lastDate) calendarDate[k + i] = i + 1;
            else calendarDate[k + i] = 0;
        }
        System.out.println("\t\t" + (month + 1) + "月"); //カレンダー出力
        System.out.println("　日 月 火 水 木 金 土");
        for (int i = 0; i < 41; i++) {
            if(calendarDate[i] == 0) System.out.print(" - ");
            else if(calendarDate[i] != 0) System.out.printf("%2d ", calendarDate[i]);
            if((i + 1) % 7 == 0) System.out.println();
            if((i + 1) % 7 == 0 && calendarDate[i] == 0) break;
        }
    }
}
