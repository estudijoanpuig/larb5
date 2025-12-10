<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class RolesAndPermissionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Reset cached roles and permissions
        app()[\Spatie\Permission\PermissionRegistrar::class]->forgetCachedPermissions();

        // Crear permisos per cada model
        $permissions = [
            // Clientes
            'view_clients',
            'create_clients',
            'edit_clients',
            'delete_clients',
            
            // Productos
            'view_products',
            'create_products',
            'edit_products',
            'delete_products',
            
            // Ventas
            'view_sales',
            'create_sales',
            'edit_sales',
            'delete_sales',
            
            // Compras
            'view_purchases',
            'create_purchases',
            'edit_purchases',
            'delete_purchases',
            
            // Proveedores
            'view_suppliers',
            'create_suppliers',
            'edit_suppliers',
            'delete_suppliers',
            
            // Empleados
            'view_employees',
            'create_employees',
            'edit_employees',
            'delete_employees',
            
            // Informes
            'view_reports',
            'export_reports',
            
            // Usuaris i sistema
            'view_users',
            'create_users',
            'edit_users',
            'delete_users',
            'manage_roles',
            'manage_permissions',
        ];

        foreach ($permissions as $permission) {
            Permission::create(['name' => $permission]);
        }

        // Crear rols
        
        // Rol: Admin - Accés total
        $adminRole = Role::create(['name' => 'admin']);
        $adminRole->givePermissionTo(Permission::all());

        // Rol: Editor - Pot gestionar dades però no usuaris
        $editorRole = Role::create(['name' => 'editor']);
        $editorRole->givePermissionTo([
            'view_clients', 'create_clients', 'edit_clients', 'delete_clients',
            'view_products', 'create_products', 'edit_products', 'delete_products',
            'view_sales', 'create_sales', 'edit_sales', 'delete_sales',
            'view_purchases', 'create_purchases', 'edit_purchases', 'delete_purchases',
            'view_suppliers', 'create_suppliers', 'edit_suppliers', 'delete_suppliers',
            'view_employees', 'create_employees', 'edit_employees', 'delete_employees',
            'view_reports', 'export_reports',
        ]);

        // Rol: Viewer - Només lectura
        $viewerRole = Role::create(['name' => 'viewer']);
        $viewerRole->givePermissionTo([
            'view_clients',
            'view_products',
            'view_sales',
            'view_purchases',
            'view_suppliers',
            'view_employees',
            'view_reports',
        ]);

        // Crear usuari admin per defecte
        $admin = User::create([
            'name' => 'Administrador',
            'email' => 'admin@comptabilitat.local',
            'password' => Hash::make('password'),
            'email_verified_at' => now(),
        ]);
        $admin->assignRole('admin');

        // Crear usuari editor de mostra
        $editor = User::create([
            'name' => 'Editor',
            'email' => 'editor@comptabilitat.local',
            'password' => Hash::make('password'),
            'email_verified_at' => now(),
        ]);
        $editor->assignRole('editor');

        // Crear usuari viewer de mostra
        $viewer = User::create([
            'name' => 'Visualitzador',
            'email' => 'viewer@comptabilitat.local',
            'password' => Hash::make('password'),
            'email_verified_at' => now(),
        ]);
        $viewer->assignRole('viewer');

        $this->command->info('✅ Rols i permisos creats correctament!');
        $this->command->info('');
        $this->command->info('Usuaris creats:');
        $this->command->info('👤 Admin: admin@comptabilitat.local / password');
        $this->command->info('👤 Editor: editor@comptabilitat.local / password');
        $this->command->info('👤 Viewer: viewer@comptabilitat.local / password');
    }
}
