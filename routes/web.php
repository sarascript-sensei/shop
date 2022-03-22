<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes([
    'reset' => false,
    'confirm' => false,
    'verify' => false,
]);



Route::get('locale/{locale}', 'MainController@changeLocale')->name('locale');
Route::get('currency/{currencyCode}', 'MainController@changeCurrency')->name('currency');
Route::get('/logout', 'Auth\LoginController@logout')->name('get-logout');

Route::middleware(['set_locale'])->group(function () {
    Route::get('reset', 'ResetController@reset')->name('reset');

    Route::middleware(['auth'])->group(function () {
        Route::group([
            'prefix' => 'person',
            'namespace' => 'Person',
            'as' => 'person.',
        ], function () {
            Route::get('/orders', 'OrderController@index')->name('orders.index');
            Route::get('/orders/{order}', 'OrderController@show')->name('orders.show');
        });

        Route::group([
            'namespace' => 'Admin',
            'prefix' => 'admin',
        ], function () {
            Route::group(['middleware' => 'is_admin'], function () {
                Route::get('/contacts', 'ContactController@index')->name('emails.contactus');
                Route::get('/orders', 'OrderController@index')->name('home');
                Route::get('/orders/{order}', 'OrderController@show')->name('orders.show');

            });
            Route::resource('blogs', 'BlogController');
            Route::resource('aboutUs', 'AboutUsController');
            Route::resource('categories', 'CategoryController');
            Route::resource('products', 'ProductController');
            Route::resource('contactus', 'ContactController');
            Route::resource('products/{product}/skus', 'SkuController');
            Route::resource('properties', 'PropertyController');
            Route::resource('merchants', 'MerchantController');

            Route::get('merchant/{merchant}/update_token', 'MerchantController@updateToken')->name('merchants.update_token');
            Route::resource('coupons', 'CouponController');
            Route::resource('properties/{property}/property-options', 'PropertyOptionController');
        });
    });


    Route::get('/', 'MainController@index')->name('index');

    Route::get('/categories', 'MainController@categories')->name('categories');
    Route::get('/about', 'MainController@aboutus')->name('about');
    Route::get('/contact-us', 'ContactUSController@contactUS')->name('contact-us');
    Route::post('contactus', ['as'=>'contactus.store','uses'=>'ContactUSController@contactSaveData']);
    Route::get('/contacts', 'MainController@contacts')->name('contacts');


    Route::get('/blogs', 'MainController@blogs')->name('blogs');
    Route::get('/blog/{id}', 'MainController@blog')->name('blog');


    Route::get('/intership', 'MainController@intership')->name('intership');
    Route::group(['prefix' => 'basket'], function () {
        Route::post('/add/{skus}', 'BasketController@basketAdd')->name('basket-add');

        Route::group([
            'middleware' => 'basket_not_empty',
        ], function () {
            Route::get('/', 'BasketController@basket')->name('basket');
            Route::get('/place', 'BasketController@basketPlace')->name('basket-place');
            Route::post('/remove/{skus}', 'BasketController@basketRemove')->name('basket-remove');
            Route::post('/place', 'BasketController@basketConfirm')->name('basket-confirm');
            Route::post('coupon', 'BasketController@setCoupon')->name('set-coupon');
        });
    });
    Route::get('/{category}', 'MainController@category')->name('category');
    Route::get('/{category}/{product}/{skus}', 'MainController@sku')->name('sku');
    Route::post('subscription/{skus}', 'MainController@subscribe')->name('subscription');





});
