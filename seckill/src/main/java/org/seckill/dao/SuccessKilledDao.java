package org.seckill.dao;

import org.seckill.model.SuccessKilled;

public interface SuccessKilledDao {
	/**
	 * 插入购买明细,可过滤重复，通过联合唯一主键过滤
	 * @param seckilled
	 * @param userPhone
	 * @return 
	 * 插入的行数，0 插入失败
	 */
	int insertSuccessKilled(long seckilled,long userPhone);
	/**
	 * 根据id查询SuccessKilled,并携带秒杀商品实体
	 * @param seckilled
	 * @return
	 */
	SuccessKilled queryByIdWithSeckill(long seckilled); 
}
