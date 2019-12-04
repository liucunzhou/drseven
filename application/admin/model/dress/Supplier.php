<?php

namespace app\admin\model\dress;

use think\Model;
use traits\model\SoftDelete;

class Supplier extends Model
{

    use SoftDelete;

    

    // 表名
    protected $name = 'supplier';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = false;
    protected $deleteTime = 'deletetime';

    // 追加属性
    protected $append = [
        'udpatetime_text'
    ];
    

    protected static function init()
    {
        self::afterInsert(function ($row) {
            $pk = $row->getPk();
            $row->getQuery()->where($pk, $row[$pk])->update(['weigh' => $row[$pk]]);
        });
    }

    



    public function getUdpatetimeTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['udpatetime']) ? $data['udpatetime'] : '');
        return is_numeric($value) ? date("Y-m-d H:i:s", $value) : $value;
    }

    protected function setUdpatetimeAttr($value)
    {
        return $value === '' ? null : ($value && !is_numeric($value) ? strtotime($value) : $value);
    }


}
