package swu.xxj.util;

public class DividePage {
	    private int pageSize; //��ʾ��ʾ������
	    private int recordCount;  //��ʾ��¼��������
	    private int currentPage;   //��ʾ��ǰҳ
	    
	    public DividePage(int pageSize,int recordCount,int currentPage){
	        this.pageSize=pageSize;
	        this.recordCount=recordCount;
	        setCurrentPage(currentPage);   //���õ�ǰҳ
	    }
	    //����
	    public DividePage(int pageSize,int recordCount){
	        this(pageSize,recordCount,1);//Ĭ��Ϊ1
	    }
	    //�����ҳ��
	    public int getPageCount(){
	        int size=recordCount/pageSize;    //��ҳ������������������ʾ����
	        int mod=recordCount%pageSize;   //����
	        if(mod!=0){           //�����������+1
	            size++;
	        }return recordCount==0?1:size;
	    }
	    public int getFromIndex(){  //��ʼ��¼����
	        return (currentPage-1)*pageSize;
	    }
	    public int getToIndex(){      //���ص�ǰҳ
	        return pageSize;
	    }
	    public int getCurrentPage(){   //��õ�ǰҳ���ж��߽�
	        return currentPage;
	    }
	    public void setCurrentPage(int currentPage){  //������ҳ�ٵ����һҳ
	        int validPage=currentPage<=0?1:currentPage;
	        validPage=validPage>getCurrentPage()?getPageCount():validPage;
	        this.currentPage=currentPage;
	    }
	    public int getPageSize(){
	        return pageSize;
	    }
	    public void setPageSize(int pageSize){
	        this.pageSize=pageSize;
	    }
	    public int getRecordCount(){
	        return recordCount;
	    }
	    public void setRecordCount(int recordCount){
	        this.recordCount=recordCount;
	    }
}
