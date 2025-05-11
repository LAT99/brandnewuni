<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return redirect()->route('login');
});
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
Route::group(['middleware' => ['auth']], function () {
    Route::get('/main-page', 'MainPageController@index')->name('main-page');
    // Route::get('/test-page', 'TestPageController@index')->name('test-page');
    Route::get('/test-page', 'TestPageController@index')->name('test-page');
    Route::get('/test-page/detail/{month}/{year}/{id}', 'TestPageController@detailTest')->name('test-page-detail');
    Route::get('/questions/{id_training}/{group}', 'TestPageController@question')->name('question');
    Route::get('/question/resutl/{id_training}/{id_history}/{question_group}', 'TestPageController@resultTest')->name('result-test-page');
    Route::post('/submit-test', 'TestPageController@submitTest')->name('submit-test');
    Route::get('/questions/correct-answer/{id_training}/{group}/{id_history}', 'TestPageController@correctAnswer')->name('correct-answer');
    Route::get('/profile/checked/history/{id_training}/{group}/{id_history}', 'TestPageController@historyTest')->name('history-correct-answer');

    Route::post('/submit-seen', 'TestPageController@updateSeen')->name('submit-seen');

    Route::get('/profile', 'HomeController@profile')->name('profile');
    //ratings
    Route::get('/ratings', 'TestPageController@ratings')->name('ratings');

    Route::get('/profile/checked', 'HomeController@checkedTest')->name('profile-seen-test');

    Route::get('/certificate', 'MainPageController@certificate')->name('certificate');

    Route::get('/video', 'MainPageController@videos')->name('videos');

    //Rules User
    Route::get('rules', 'MainPageController@showRule')->name('show-rules');
    //News
    Route::get('news', 'MainPageController@showNews')->name('show-news');
    Route::get('news/detail/{id}/{slug}', 'MainPageController@detailNews')->name('detail-news');
    
    //Gifts
    Route::get('/gifts', 'MainPageController@gifts')->name('gifts');
    Route::get('/gifts/detail/{price}/{provider_id}', 'MainPageController@giftsDetail')->name('gifts-detail');
    Route::get('/gifts/physical/detail/{gift_id}', 'MainPageController@giftsDetailPhysical')->name('gifts-detail-physical');
    Route::post('/gifts/confirm', 'MainPageController@giftsConfirm')->name('gifts-confirm');
    Route::post('/gifts/physical/confirm', 'MainPageController@giftsConfirmPhysical')->name('gifts-confirm-physical');
    Route::post('/gifts/save', 'MainPageController@giftsSave')->name('gifts-save');
    Route::post('/gifts/physical/save', 'MainPageController@giftsSavePhysical')->name('gifts-save-physical');

    Route::get('/gifts/notice', 'MainPageController@giftNotice')->name('gifts-notice');
    
});
//forgot pass
Route::get('forget-password', 'Auth\ForgotPasswordController@showForgetPasswordForm')->name('forget.password.get');
Route::post('forget-password', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('forget.password.post');
Route::get('reset-password/{token}', 'Auth\ForgotPasswordController@showResetPasswordForm')->name('reset.password.get');
Route::post('update-password', 'Auth\ForgotPasswordController@submitResetPasswordForm')->name('password.update.post');
//management_agency
Route::group(['middleware' => ['permission:management|management_agency']], function () {
    Route::get('/admin/management-staff', 'AdminController@managementStaff')->name('management-staff');
    Route::post('/create-staff', 'AdminController@createStaff')->name('create-staff');
    Route::post('/admin/management-staff/edit', 'AdminController@editStaff')->name('edit_staff');
    Route::get('/admin/management-staff/edit-staff/{staff_id}', 'AdminController@editMnStaff')->name('edit_mn_staff');
    Route::post('/admin/management-staff/update', 'AdminController@updateStaff')->name('staff-update');
    Route::post('/admin/management-staff/delete', 'AdminController@deleteStaff')->name('staff-delete');
});


//management-quarter
Route::group(['middleware' => ['permission:management|management_quarter']], function () {
    Route::get('/admin/management-quarter', 'AdminController@managementQuarter')->name('management-quarter');
    Route::post('/create-quarter', 'AdminController@createQuarter')->name('create-quarter');
    Route::post('/edit-quarter', 'AdminController@editQuarter')->name('edit-quarter');
    Route::post('/update-quarter', 'AdminController@updateQuarter')->name('update-quarter');
});


//management-questions
Route::group(['middleware' => ['permission:management|management_questions']], function () {
    Route::get('/admin/management-questions', 'AdminController@managementQuestions')->name('management-questions');
    Route::get('/admin/management-questions/group/{id_training}/{id_group}', 'AdminController@getGroupQuestion')->name('get-group-questions');
    Route::get('/admin/management-questions/group/detail/edit/{id_question}', 'AdminController@editQuestion')->name('question-edit');
    Route::post('/admin/management-questions/group/detail/update', 'AdminController@updateQuestion')->name('question-update');
    Route::get('/admin/management-questions/group/detail/create/{id_training}/{group}', 'AdminController@createQuestion')->name('create-question');
    Route::post('/admin/management-questions/group/detail/save', 'AdminController@saveQuestion')->name('question-save');
    Route::post('/admin/management-question/delete', 'AdminController@deleteQuestion')->name('question-delete');

    Route::get('/admin/management-questions/create-group-question', 'AdminController@createGroupQuestion')->name('management-group-question');
    Route::post('/admin/management-questions/save-group-question', 'AdminController@saveGroupQuestion')->name('management-group-save');
});
//edit user


//removeData

Route::get('/admin/delete/database', 'AdminController@deleteDatabase')->name('database');

// edit-config
Route::group(['middleware' => ['permission:management|management_common']], function () {
    Route::get('/admin/management-common', 'AdminController@commonManagement')->name('management-common');
    Route::post('/admin/management-common/create', 'AdminController@createConfig')->name('create-config');
    Route::post('/admin/management-common/update', 'AdminController@updateConfig')->name('update-config');
});

Route::get('/admin/management-staff/history/score/{staff}', 'AdminController@historyScore')->name('history-score');

Route::group(['middleware' => ['auth', 'admin']], function () {
    Route::get('/admin/management-users', 'AdminController@managementUser')->name('managements-users');
    Route::post('/admin/management-users/create', 'AdminController@managementUserCreate')->name('create-user');
    Route::post('/admin/management-users/delete', 'AdminController@managementUserDelete')->name('user-delete');

    Route::get('/admin/management-users/set-permission/{user}', 'AdminController@managementUserPermission')->name('add-permission');
    Route::post('/admin/management-users/save-permission-user', 'AdminController@saveUserPermission')->name('save-permission-user');
});

// Route::post('/admin/management-users/create-role', 'AdminController@managementUserCreateRole')->name('create-role');
Route::post('/admin/change-status-group', 'AdminController@changeGroupStatus')->name('change_status_group');

Route::get('export', 'AdminController@export')->name('export');

//management-rule admin
Route::group(['middleware' => ['auth', 'admin', 'permission:management|management_rule']], function () {            
    Route::get('/admin/management-rules', 'AdminController@managementRule')->name('management-rules');
    Route::post('/admin/management-rules', 'AdminController@ruleCreate')->name('management-rules');
});

//management-news
Route::group(['middleware' => ['auth', 'admin', 'permission:management|management_news']], function () {
    Route::get('/admin/management-news', 'AdminController@managementNews')->name('management-news');
    Route::post('/admin/management-news', 'AdminController@newsCreate')->name('management-news');

    Route::get('/admin/management-news/create', 'AdminController@createNews')->name('create-news');
    Route::get('/admin/management-news/edit/{id}', 'AdminController@editNews')->name('edit-news');
    Route::post('/admin/management-news/update', 'AdminController@newsUpdate')->name('update-news');
    Route::post('/admin/management-news/delete', 'AdminController@newsDelete')->name('delete-news');
});

//management-videos
Route::group(['middleware' => ['auth', 'admin', 'permission:management|management_videos']], function () {
    Route::get('/admin/management-videos', 'VideoController@managementVideo')->name('management-videos');
    Route::post('/admin/management-videos/create', 'VideoController@createVideo')->name('create-videos');
    Route::post('/admin/management-videos/delete', 'VideoController@deleteVideo')->name('delete-videos');
});
//change pass admin
Route::group(['middleware' => ['auth', 'admin']], function () {
    Route::get('/admin/change-password', 'AdminController@changeStaff')->name('change-pass-staff');
    Route::post('/admin/change-password', 'AdminController@updatePassStaff')->name('update-pass-staff');
});

Route::group(['middleware' => ['auth', 'admin', 'permission:management|management_gift']], function () {
    Route::get('/admin/management-gift', 'GitfController@index')->name('management-gift');
    // Route::get('/admin/management-gift', 'GitfController@index')->name('management-gift-common');
    // export
    Route::get('gift/export/card', 'GitfController@exportListCard')->name('export-list-card-admin');
    

    //gift physical
    Route::get('/admin/management-gift/physical', 'GitfController@physicalGift')->name('management-gift-physical');
    Route::get('/admin/management-gift/physical/create', 'GitfController@physicalGiftAdd')->name('management-gift-physical.add');
    Route::post('/admin/management-gift/physical/create', 'GitfController@physicalGiftCreate')->name('management-gift-physical.create');
    Route::post('/admin/management-gift/physical/delete', 'GitfController@physicalGiftDelete')->name('management-gift-physical.delete-gift');
      //edit
    Route::get('/admin/management-gift/physical/edit/{gift_id}', 'GitfController@physicalGiftEdit')->name('management-gift-physical.edit');
    Route::post('/admin/management-gift/physical/update', 'GitfController@physicalGiftUpdate')->name('management-gift-physical.update');
    
    //gift online
    Route::get('/admin/management-gift/online', 'GitfController@onlineGift')->name('management-gift-online');
    Route::post('/admin/management-gift/import', 'GitfController@importOnlineGift')->name('management-gift-online.import');
    Route::post('/admin/management-gift/provider/create', 'GitfController@providerCreate')->name('management-gift-online.provider.create');
    Route::post('/admin/management-gift/provider/delete', 'GitfController@providerDelete')->name('management-gift-online.provider.delete');

    Route::post('/admin/management-gift/provider/edit', 'GitfController@providerEdit')->name('management-gift-online.provider.edit');
    Route::post('/admin/management-gift/provider/update', 'GitfController@providerUpdate')->name('management-gift-online.provider.update');

    //card
    Route::post('/admin/management-gift/card/delete', 'GitfController@cardDelete')->name('management-gift-online.card.delete');
    Route::post('/admin/management-gift/card/edit', 'GitfController@cardEdit')->name('management-gift-online.card.edit');
    Route::post('/admin/management-gift/card/update', 'GitfController@cardUpdate')->name('management-gift-online.card.update');
    Route::post('/admin/management-gift/card/create', 'GitfController@cardCreate')->name('management-gift-online.card.create');

    //common
    Route::post('/admin/management-gift/common', 'GitfController@commonCreate')->name('management-gift.common');
    
});
