<?php

namespace App\Voyager\Widgets;

use Arrilot\Widgets\AbstractWidget;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;

use App\Producto;

class Productos extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = \App\Producto::count();
        $string = 'Products';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-bag',
            'title'  => "{$count} {$string}",
            'text'   => __("You have {$count} products in your database. Click on button below to view all products."),
            'button' => [
                'text' => 'Productos',
                'link' => route('voyager.productos.index'),
            ],
            'image' => '/img/voyager/widgets/producto-bg.jpg',
        ]));
    }
}
