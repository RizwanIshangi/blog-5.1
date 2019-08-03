<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => rand(),
            'email' => rand().'@gmail.com',
            'password' => bcrypt('secret'),
        ]);
    }
}
