
public class LongestCommon
{
    public static void main (String args[]) {
        findCommon("0123456789||0987654321", "0123456789  0987654321");
        findCommon("", "");
    }

    public static void findCommon(String a, String b) {
        int count=0;
        int max=0;
        String longest="";
        a=a.toLowerCase();
        b=b.toLowerCase();
        for (int i=0;i<a.length();i++) {
            for (int j=0;j<b.length();j++) {
                count=0;
                while (j+count<b.length() && 
                       i+count<a.length() && 
                       b.charAt(j+count)==a.charAt(i+count)) {
                    count++;
                    //System.out.println("i is " + i);
                    //System.out.println("j is " + j);
                    //System.out.println("count is " + count);
                }
                if (count>max) {
                    longest = a.substring(i,Math.min(i+count,a.length()));
                    max=count;
                    //System.out.println("Maximum is now " + max);
                }
                else if (count==max) {
                    longest = longest + "\n" + a.substring(i,Math.min(i+count,a.length()));
                }
            }
        }
        System.out.println(longest);
    }
}
