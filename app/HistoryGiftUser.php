<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HistoryGiftUser extends Model
{
    protected $table = 'history_gift_user';
    public function card()
    {
        return $this->belongsTo('App\ManagementCard', 'card_id', 'id');
    }

    public function gift()
    {
        return $this->belongsTo('App\ManagementGift', 'gift_id', 'id');
    }

    public function address()
    {
        return $this->belongsTo('App\ManagementAddress', 'address_id', 'id');
    }
}
