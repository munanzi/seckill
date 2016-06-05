package org.seckill.dao;

import org.seckill.entity.SuccessKilled;

/**
 * Created by Alex on 2016/5/20.
 */
public interface SuccessKilledDao {
    /**
     * 插入购买明细，可过滤重复
     * @param seckillId
     * @param userphone
     * @return
     * 插入的行数
     */
    int insertSuccessKilled(long seckillId,long userphone);

    /**
     * 根据id查询SuccessKilled并携带秒杀产品对象实体
     * @param seckillId
     * @return
     */
    SuccessKilled queryBiIdWithSeckill(long seckillId);


}
