package com.lenovo.leos.cloud.deputy.setting; 

/**
 * 
 * @author Danior Qu
 *
 */
interface ILcpSettings { 
    boolean getWifiScanAlwaysEnabled(); 
    void setWifiScanAlwaysEnabled(boolean val);
    
    boolean getWifiOn();
    void setWifiOn(boolean val);
}