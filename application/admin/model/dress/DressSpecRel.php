<?php

namespace app\admin\model\dress;
use think\Model;

class DressSpecRel extends Model
{
	// 表名
    protected $name = 'dress_spec_rel';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'create_time';
    protected $updateTime = '';

    /**
     * 关联规格组
     * @return \think\model\relation\BelongsTo
     */
    public function spec()
    {
        return $this->belongsTo('spec');
    }
}