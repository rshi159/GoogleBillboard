public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{    
	double dNum = 0;
	for(int i=2;i<e.length()-10;i++)
	{
		String digits = e.substring(i,i+10);
	    double fNum = Double.parseDouble(digits);
	    if(isPrime(fNum) == true)
	    	System.out.println(fNum);
	}
	noLoop();
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    for(int p = 2; p <Math.sqrt(dNum); p++)
    {
    	if(dNum%p == 0)
    		return false;
    }
    return true;
} 