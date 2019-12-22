<?php

namespace App\Providers;

use App\Repositories\Contracts\CategoryInterface;
use App\Repositories\Contracts\CustomerInterface;
use App\Repositories\Contracts\OpportunityInterface;
use App\Repositories\Contracts\PermissionInterface;
use App\Repositories\Contracts\PipelineInterface;
use App\Repositories\Contracts\ServiceInterface;
use App\Repositories\Contracts\StageInterface;
use App\Repositories\Contracts\UserInterface;
use App\Repositories\SQL\CategoryRepository;
use App\Repositories\SQL\CustomerRepository;
use App\Repositories\SQL\OpportunityRepository;
use App\Repositories\SQL\PermissionRepository;
use App\Repositories\SQL\PipelineRepository;
use App\Repositories\SQL\ServiceRepository;
use App\Repositories\SQL\StageRepository;
use App\Repositories\SQL\UserRepository;
use Illuminate\Support\ServiceProvider;

class RepositoryServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
         $this->app->bind(CategoryInterface::class, CategoryRepository::class);
         $this->app->bind(StageInterface::class, StageRepository::class);
         $this->app->bind(CustomerInterface::class, CustomerRepository::class);
         $this->app->bind(PipelineInterface::class, PipelineRepository::class);
         $this->app->bind(UserInterface::class, UserRepository::class);
         $this->app->bind(ServiceInterface::class, ServiceRepository::class);
         $this->app->bind(PermissionInterface::class, PermissionRepository::class);
         $this->app->bind(OpportunityInterface::class, OpportunityRepository::class);



    }
}

