package org.seckill.dao;

import java.util.Date;
import java.util.List;

import org.seckill.model.Seckill;

public interface SeckillDao {
	/**
	 * 减库存
	 * @param seckillId
	 * @param killTime
	 * @return 返回值>=1 表示更新行数 0更新失败
	 */
	int reduceNumber(long seckillId,Date killTime);
	
	/**
	 * 根据商品id查询秒杀商品
	 * @param seckillId
	 * @return
	 */
	Seckill queryById(long seckillId);
	/**
	 * 根据偏移量查询秒杀商品列表
	 * @param offset
	 * @param limit
	 * @return
	 */
	List<Seckill> queryAll(int offset,int limit);
}
