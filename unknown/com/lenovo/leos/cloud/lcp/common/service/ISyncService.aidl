package com.lenovo.leos.cloud.lcp.common.service;

/**
 * 通用数据控制服务
 */
interface ISyncService {
	/**
	 * 获取AppKey
	 */
	String getAppKey();
	
	/**
	 * 获取同步开关状态
	 */
	boolean getSwitchFlag();
	
	/**
	 * 设置同步开关
	 */
	void setSwitchFlag(boolean flag);
	
	/**
	 * 获取开关描述
	 */
	String getSwitchDesc();
	
	/**
	 * 获取点击进入的Activity的Intent
	 */
	Intent getActivityIntent();
	
	/**
	 * 获取任务执行状态
	 * @param taskType 任务类型
	 */
	boolean isTaskRunning(int taskType);
	
	/**
	 * 获取支持的任务类型
	 */
	int[] getSupportTaskTypes();
	
	/**
	 * 获取支持的任务类型描述
	 */
	String[] getSupportTaskTypeDescs();
	
	/**
	 * 启动任务
	 */
	void startTask(int taskType);
	
	/**
	 * 取消任务
	 */
	void cancelTask(int taskType);
	
	/**
	 * 获取最后一次任务的结果
	 * @return 返回JSON格式数据
	 */
	String getLastTaskResult();
	
	/**
	 * 获取指定任务类型的最后一次任务的结果
	 * @return 返回JSON格式数据
	 */
	String getLastTaskResultForTaskType(int taskType);

}