<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Models\AccountHead;
use App\Models\CostCenter;
use Illuminate\Database\Eloquent\SoftDeletes;

class JournalTemp extends Model
{
    use SoftDeletes;

    public function records(){
        return $this->hasMany(JournalRecordsTemp::class);
    }

    public function party(){
        return $this->belongsTo(PartyInfo::class,'party_info_id');
    }

    public function project(){
        return $this->belongsTo(ProjectDetail::class,'project_id');
    }

    public function cost_center(){
        return $this->belongsTo(CostCenter::class,'cost_center_id');
    }

    public function ac_head(){
        return $this->belongsTo(AccountHead::class,'account_head_id');
    }

    function amount_word($number) 
    {
        if (($number < 0) || ($number > 999999999)) 
        {
            throw new Exception("Number is out of range");
        }
        $giga = floor($number / 1000000);
        // Millions (giga)
        $number -= $giga * 1000000;
        $kilo = floor($number / 1000);
        // Thousands (kilo)
        $number -= $kilo * 1000;
        $hecto = floor($number / 100);
        // Hundreds (hecto)
        $number -= $hecto * 100;
        $deca = floor($number / 10);
        // Tens (deca)
        $n = $number % 10;
        // Ones
        $result = "";
        if ($giga) 
        {
            $result .= $this->amount_word($giga) .  "Million";
        }
        if ($kilo) 
        {
            $result .= (empty($result) ? "" : " ") .$this->amount_word($kilo) . " Thousand";
        }
        if ($hecto) 
        {
            $result .= (empty($result) ? "" : " ") .$this->amount_word($hecto) . " Hundred";
        }
        $ones = array("", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eightteen", "Nineteen");
        $tens = array("", "", "Twenty", "Thirty", "Fourty", "Fifty", "Sixty", "Seventy", "Eigthy", "Ninety");
        if ($deca || $n) {
            if (!empty($result)) 
            {
                $result .= " and ";
            }
            if ($deca < 2) 
            {
                $result .= $ones[$deca * 10 + $n];
            } else {
                $result .= $tens[$deca];
                if ($n) 
                {
                    $result .= "-" . $ones[$n];
                }
            }
        }
        if (empty($result)) 
        {
            $result = "zero";
        }
        return $result;
    }

    //work by tarek
    public function taxRate()
    {
        return $this->belongsTo(VatRate::class, 'tax_rate');
    }

    // work by mominul
    public function voucher_type(){
        return $this->hasOne(DebitCreditVoucher::class,'journal_id');
    }
}
