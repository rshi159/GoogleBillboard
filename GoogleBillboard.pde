public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328";  
public void setup()  
{    
	int thing = 0;
	int count = 0;
	for(int i=2;i<e.length()-10;i++)
	{
		String digits = e.substring(i,i+10);
	    double fNum = Double.parseDouble(digits);
	    if(isPrime(fNum) == true)
	    {
	    	System.out.println("the prime is: " + fNum);
	    	break;
	    }
	}
	for(int j=2;j<e.length()-10;j++)
	{
		for(int k=j;k<j+10;k++)
		{
			double zNum = Double.parseDouble(e.substring(k,k+1));
			thing += zNum;
		}
		if(thing == 49)
			count++;
		else
			thing = 0;
		if(count == 5)
		{
			System.out.println("f(5)= " + Double.parseDouble(e.substring(j,j+10)));
			break;
		}

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
