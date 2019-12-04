<?php

namespace app\admin\model\dress;

use think\Model;
use traits\model\SoftDelete;

class Storage extends Model
{

    use SoftDelete;

    

    // 表名
    protected $name = 'storage';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    protected $deleteTime = 'deletetime';

    // 追加属性
    protected $append = [
        'confirmtime_text'
    ];
    

    



    public function getConfirmtimeTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['confirmtime']) ? $data['confirmtime'] : '');
        return is_numeric($value) ? date("Y-m-d H:i:s", $value) : $value;
    }

    protected function setConfirmtimeAttr($value)
    {
        return $value === '' ? null : ($value && !is_numeric($value) ? strtotime($value) : $value);
    }


}
