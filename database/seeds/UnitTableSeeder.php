<?php

use App\Unit;
use Illuminate\Database\Seeder;

class UnitTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $units = array('Bottle', 'Box', 'FT', 'GM', 'KG', 'LBS', 'Litre', 'Meter', 'ML', 'Packets', 'PCS');
        foreach($units as $unit){
            Unit::create(['name' => $unit]);
        }
    }
}
