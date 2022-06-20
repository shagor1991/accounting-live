<?php

use App\Setting;
use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Setting::updateOrCreate([
            'config_name' => 'company_name',
            'config_value' => 'Zinith Accounting & Inventory',
        ]);

        Setting::updateOrCreate([
            'config_name' => 'company_address',
            'config_value' => 'Test Address',
        ]);

        Setting::updateOrCreate([
            'config_name' => 'company_tele',
            'config_value' => '01914564744',
        ]);

        Setting::updateOrCreate([
            'config_name' => 'company_email',
            'config_value' => 'info@zinith-audit.com',
        ]);
    }
}
