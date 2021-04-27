import java.util.Calendar;

public class CalendarClass {
    public static void main(String[] args){
        Calendar calendar = Calendar.getInstance();

        int year = calendar.get(Calendar.YEAR);
        int month = calendar.get(Calendar.MONTH);
        int date = calendar.get(Calendar.DATE);

        //今日の日付
        System.out.println("今日の日時は"+ year +"年"+ (month + 1) +"月"+ date +"日");

        //今月の開始曜日
        calendar.set(year, month, 1);
        String[] week = {"日","月","火","水","木","金","土"};
        int startWeek = calendar.get(Calendar.DAY_OF_WEEK);
        System.out.println((month + 1) +"月1日は"+ week[startWeek - 1] +"曜日です");  // 1:日曜日

        //今月の最終日
        calendar.set(year, month, 0);
        int lastDate = calendar.get(Calendar.DATE) -1;
        System.out.println((month + 1) +"月は"+ lastDate +"日までです");

        //今月分の日数を配列に格納する
        int[] calendarDate = new int[42];
        int count = 0;
        for(int i = 1; i <= lastDate; i++){
            calendarDate[count++] = i;
        }

        int weekCount = count / 7;
        for(int i = 0; i < weekCount; i++) {
            for (int j = i * 7; j < i * 7 + 7; j++) {
                if (calendarDate[j] < 10) {
                    System.out.print(" " + calendarDate[j] + " ");
                } else {
                    System.out.print(calendarDate[j] + " ");
                }
            }
            System.out.print("\r\n");
        }
    }
}
