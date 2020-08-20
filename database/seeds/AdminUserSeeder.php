<?php

use App\User;
use Illuminate\Database\Seeder;

class AdminUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user =  User::create([
            'name' => 'admin',
            'email' => 'administrator@simpustaka.com',
            'password' => bcrypt('simpustaka'),
            'email_verified_at' => now()
        ]);

        $user->assignRole('admin');
    }
}
