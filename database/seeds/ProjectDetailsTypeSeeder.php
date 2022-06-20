<?php

use App\ProjectDetailsType;
use Illuminate\Database\Seeder;

class ProjectDetailsTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ProjectDetailsType::create([
            'title'=>'One Story Villa',
        ]);

        ProjectDetailsType::create([
            'title'=>'Two Story Villa',
        ]);

        ProjectDetailsType::create([
            'title'=>'Double Story Villa',
        ]);

        ProjectDetailsType::create([
            'title'=>'Villa (G+1)',
        ]);

        ProjectDetailsType::create([
            'title'=>'Double Story Villa + Kitchen',
        ]);


        ProjectDetailsType::create([
            'title'=>'Kitchen Block',
        ]);


        ProjectDetailsType::create([
            'title'=>'Single Story Villa + B.W',
        ]);

        ProjectDetailsType::create([
            'title'=>'Single Story Villa',
        ]);

    }
}