<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(PermissionSeeder::class);
    }
}
class PermissionSeeder extends Seeder
{
    public function run() {
        $temp = Permission::where('name', 'management')->first();

        if(!$temp){
            $role = Role::create(['name' => 'supper_admin']);
            $permission = Permission::create(['name' => 'management']);
            $role->givePermissionTo($permission);
        }
        
        $temp = Permission::where('name', 'management_quarter')->first();
        if(!$temp){
            $role = Role::create(['name' => 'admin1']);
            $permission = Permission::create(['name' => 'management_quarter']);
            $role->givePermissionTo($permission);
        }

        $temp = Permission::where('name', 'management_questions')->first();
        if(!$temp){
            $role = Role::create(['name' => 'admin2']);
            $permission = Permission::create(['name' => 'management_questions']);
            $role->givePermissionTo($permission);
        }

        $temp = Permission::where('name', 'management_agency')->first();
        if(!$temp){
            $role = Role::create(['name' => 'admin3']);
            $permission = Permission::create(['name' => 'management_agency']);
            $role->givePermissionTo($permission);
        }
        
        $temp = Permission::where('name', 'management_common')->first();
        if(!$temp){
            $role = Role::create(['name' => 'admin4']);
            $permission = Permission::create(['name' => 'management_common']);
            $role->givePermissionTo($permission);
        }
       
        $temp = Permission::where('name', 'management_gift')->first();
        if(!$temp){
            $role = Role::create(['name' => 'admin5']);
            $permission = Permission::create(['name' => 'management_gift']);
            $role->givePermissionTo($permission);
        }
       
        $temp = Permission::where('name', 'management_news')->first();
        if(!$temp){
            $role = Role::create(['name' => 'admin6']);
            $permission = Permission::create(['name' => 'management_news']);
            $role->givePermissionTo($permission);
        }

        $temp = Permission::where('name', 'management_rule')->first();
        if(!$temp){
            $role = Role::create(['name' => 'admin7']);
            $permission = Permission::create(['name' => 'management_rule']);
            $role->givePermissionTo($permission);
        }

        $temp = Permission::where('name', 'management_videos')->first();
        if(!$temp){
            $role = Role::create(['name' => 'admin8']);
            $permission = Permission::create(['name' => 'management_videos']);
            $role->givePermissionTo($permission);
        }
    }
}
