<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class InspectSource extends Command
{
    protected $signature = 'inspect:source';
    protected $description = 'Inspect source projects table';
    protected $description = 'Inspect source posts table';

    public function handle()
    {
        try {
            if (Schema::connection('second')->hasTable('posts')) {
                $this->info('Table "posts" exists in source DB.');
                $columns = Schema::connection('second')->getColumnListing('posts');
                $this->info('Columns: ' . implode(', ', $columns));

                // Get one row to see sample data format if needed
                $row = DB::connection('second')->table('posts')->first();
                if ($row) {
                    $this->info('Sample row: ' . json_encode($row));
                } else {
                    $this->warn('Table is empty.');
                }
            } else {
                $this->error('Table "projects" does NOT exist in source DB.');
                // List all tables to see if it has a different name
                $tables = DB::connection('second')->select('SHOW TABLES');
                $this->info('Tables in source DB:'); // Map to string
                foreach ($tables as $table) {
                    $this->info(array_values((array) $table)[0]);
                }
            }
        } catch (\Exception $e) {
            $this->error('Error connecting to source: ' . $e->getMessage());
        }
    }
}
