<?php

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;
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

// Route::get('/', function () {
//     return view('auth.login');
// });

Route::get('/', 'Auth\LoginController@loginf')->name('loginf');


Route::get('/storage-link', function () {
    Artisan::call('storage:link');
});

Route::get('/pdf/{id}', 'HomeController@pdf')->name('pdf');

Route::get('/search/ajax/{id}', 'HomeController@SearchAjax')->name('admin.masterAccSearchAjax');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

// Route::get('/home', 'backend\ParentProfileController@index')->name('home');

Route::group(['middleware' => 'auth'], function(){
    Route::get('/dashboard', 'backend\DashboardController@index');
    Route::get('/form-layout', 'backend\DashboardController@form_layout');
    Route::get('/form-input', 'backend\DashboardController@form_input');
    Route::resource('role', 'backend\RoleController');
    Route::resource('settings','backend\SettingController');

    // Project Details Starts
    Route::get('/project-details', 'backend\ProjectController@projectDetails')->name('projectDetails');
    Route::post('/project-details/Post', 'backend\ProjectController@projectDetailsPost')->name('projectDetailsPost');
    Route::get('/project-details/edit/{proj}', 'backend\ProjectController@projectEdit')->name('projectEdit');
    Route::post('/project-details/Post/edit/{proj}', 'backend\ProjectController@projectDetailsUpdate')->name('projectDetailsUpdate');
    Route::get('/project-details/delete/{proj}', 'backend\ProjectController@projectDelete')->name('projectDelete');
    Route::get('/project-details/form', 'backend\ProjectController@projectForm')->name('projectForm');
    // Project Details Ends

    // Bank Details Starts
    Route::get('/bank-details', 'backend\BankController@bankDetails')->name('bankDetails');
    Route::post('/bank-details/Post', 'backend\BankController@bankDetailsPost')->name('bankDetailsPost');
    Route::get('/bank-details/edit/{bank}', 'backend\BankController@bankEdit')->name('bankEdit');
    Route::post('/bank-details/Post/edit/{bank}', 'backend\BankController@bankDetailsUpdate')->name('bankDetailsUpdate');
    Route::get('/bank-details/delete/{bank}', 'backend\BankController@bankDelete')->name('bankDelete');
    Route::get('/bank-details/form/', 'backend\BankController@bankForm')->name('bankForm');
    // Bank Details Ends

    // Master Accounts Details Starts
    Route::get('/master-accounts-details', 'backend\MasterAccountController@masteAccDetails')->name('masteAccDetails');
    Route::post('/master-details/Post', 'backend\MasterAccountController@MasterDetailsPost')->name('masterDetailsPost');
    Route::get('/master-details/edit/{masterAcc}', 'backend\MasterAccountController@masterEdit')->name('masterEdit');
    Route::post('/master-details/Post/edit/{masterAcc}', 'backend\MasterAccountController@masterDetailsUpdate')->name('masterDetailsUpdate');
    Route::get('/master-details/delete/{masterAcc}', 'backend\MasterAccountController@masterDelete')->name('masterDelete');
    Route::get('/master-details/type', 'backend\MasterAccountController@mstAccType')->name('mstAccType');
    Route::post('/master-details/masterCatPost', 'backend\MasterAccountController@masterCatPost')->name('masterCatPost');
    Route::post('/master-details/masterAccType', 'backend\MasterAccountController@masterAccType')->name('masterAccType');
    Route::post('/master-details/findMastedCode', 'backend\MasterAccountController@findMastedCode')->name('findMastedCode');
    // Master Accounts Details Ends


    // Account Head Details Starts
    Route::get('/accounts-head-details', 'backend\MasterAccountController@accHeadDetails')->name('accHeadDetails');
    Route::post('/project-details/Post/{masterAcc}', 'backend\MasterAccountController@accHeahDetailsPost')->name('accHeahDetailsPost');
    Route::get('/findMasterAcc/{masterAcc}', 'backend\MasterAccountController@findMasterAcc')->name('findMasterAcc');
    Route::get('/editAccHead/{item}', 'backend\MasterAccountController@editAccHead')->name('editAccHead');
    Route::post('/project-details/edit/post/{account_head}', 'backend\MasterAccountController@accHeahEditPost')->name('accHeahEditPost');
    // Account Head Details Ends



    // Cost center Details Starts
    Route::get('/cost-center-details', 'backend\CostCenterController@costCenterDetails')->name('costCenterDetails');
    Route::post('/costCenter/Post/', 'backend\CostCenterController@costCenterPost')->name('costCenterPost');
    Route::get('/cost-center/edit/{costCenter}', 'backend\CostCenterController@costCenEdit')->name('costCenEdit');
    Route::post('/cost-center/Post/edit/{costCenter}', 'backend\CostCenterController@costCentersUpdate')->name('costCentersUpdate');
    Route::get('/cost-center/delete/{costCenter}', 'backend\CostCenterController@costCenDelete')->name('costCenDelete');
    Route::get('/cost-center/form/', 'backend\CostCenterController@costCenterForm')->name('costCenterForm');
    // Cost center Details Ends

    // Profit Ccenter center Details Starts
    Route::get('/profit-details', 'backend\ProfitCenterController@ProfitCenterDetails')->name('profitCenterDetails');
    Route::post('/profit-center/Post/', 'backend\ProfitCenterController@profitCenterPost')->name('profitCenterPost');
    Route::get('/profit-center/edit/{profitCenter}', 'backend\ProfitCenterController@profitCenEdit')->name('profitCenEdit');
    Route::post('/profit-center/Post/edit/{profitCenter}', 'backend\ProfitCenterController@profitCentersUpdate')->name('profitCentersUpdate');
    Route::get('/profit-center/delete/{profitCenter}', 'backend\ProfitCenterController@profitCenDelete')->name('profitCenDelete');
    Route::get('/profit-center/form', 'backend\ProfitCenterController@profitCenterForm')->name('profitCenterForm');
    // Profit Ccenter center Details Ends

    // Profit Ccenter center Details Starts
    Route::get('/party-info', 'backend\PartyInfoController@partyInfoDetails')->name('partyInfoDetails');
    Route::post('/party-info/Post/', 'backend\PartyInfoController@partyInfoPost')->name('partyInfoPost');
    Route::get('/party-info/edit/{pInfo}', 'backend\PartyInfoController@partyInfoEdit')->name('partyInfoEdit');
    Route::post('/party-info/Post/edit/{profitCenter}', 'backend\PartyInfoController@partyInfoUpdate')->name('partyInfoUpdate');
    Route::get('/party-info/delete/{pinfo}', 'backend\PartyInfoController@partyInfoDelete')->name('partyInfoDelete');
    Route::get('/party-info/form/', 'backend\PartyInfoController@partyInfoForm')->name('partyInfoForm');
    // Profit Ccenter center Details Ends

    // Tax Invoice Issue
    Route::get('/taxt-invoice-issue', 'backend\TaxInvoiceController@taxInvoIssue')->name('taxInvoIssue');
    Route::get('/taxt-invoice-issue/post', 'backend\TaxInvoiceController@taxInvoIssuepost')->name('taxInvoIssuepost');
    Route::post('select/item/by/term/', 'backend\TaxInvoiceController@selectItemByTerm')->name('selectItemByTerm');
    Route::post('party/info/by/term/', 'backend\TaxInvoiceController@partyInfoInvoice')->name('partyInfoInvoice');
    Route::post('find/date/', 'backend\TaxInvoiceController@findDate')->name('findDate');
    Route::post('find/item/', 'backend\TaxInvoiceController@findItem')->name('findItem');
    Route::get('temp/invoice/', 'backend\TaxInvoiceController@tempInvoice')->name('tempInvoice');
    Route::post('final/invoice/', 'backend\TaxInvoiceController@finalSaveInvoice')->name('finalSaveInvoice');
    Route::get('invoicess/', 'backend\TaxInvoiceController@invoicess')->name('invoicess');
    Route::get('invoicePrint/{invoice}', 'backend\TaxInvoiceController@invoicePrint')->name('invoicePrint');
    Route::get('itemDelete/{item}', 'backend\TaxInvoiceController@itemDelete')->name('itemDelete');
    Route::get('refresh_invoice/', 'backend\TaxInvoiceController@refresh_invoice')->name('refresh_invoice');
    Route::get('invoice-view/{invoice}', 'backend\TaxInvoiceController@invoiceView')->name('invoiceView');
    Route::get('invoice-edit/{invoice}', 'backend\TaxInvoiceController@invoiceEdit')->name('invoiceEdit');
    Route::post('invoice-update/{invoice}', 'backend\TaxInvoiceController@finalSaveInvoiceUpdate')->name('finalSaveInvoiceUpdate');
    Route::post('find/item/id', 'backend\TaxInvoiceController@findItemId')->name('findItemId');
    // End Tax Invoice Issue

    //Stock Position
    Route::get('/stock-position', 'backend\StockPositionController@stockPosition')->name('stockPosition');
    //End Stock Position

    //Journal Entry
    Route::get('/journal-entry', 'backend\JournalEntryController@journalEntry')->name('journalEntry');
    Route::post('find-project', 'backend\JournalEntryController@findProject')->name('findProject');
    Route::post('find-cost-center', 'backend\JournalEntryController@findCostCenter')->name('findCostCenter');
    Route::post('find-cost-center/id', 'backend\JournalEntryController@findCostCenterId')->name('findCostCenterId');
    Route::post('party/info/by/term2/', 'backend\JournalEntryController@partyInfoInvoice2')->name('partyInfoInvoice2');
    Route::post('find-account-head', 'backend\JournalEntryController@findAccHead')->name('findAccHead');
    Route::post('find-account-head/id', 'backend\JournalEntryController@findAccHeadId')->name('findAccHeadId');
    Route::post('find-tax_rate', 'backend\JournalEntryController@findTaxRate')->name('findTaxRate');
    Route::post('journal-entry/post', 'backend\JournalEntryController@journalEntryPost')->name('journalEntryPost');
    Route::get('journal-edit/{journal}', 'backend\JournalEntryController@journalEdit')->name('journalEdit');
    Route::post('journal-entry/edit-post/{journal}', 'backend\JournalEntryController@journalEntryEditPost')->name('journalEntryEditPost');
    Route::get('/journal/delete/{journal}', 'backend\JournalEntryController@journalDelete')->name('journalDelete');
    Route::get('/journal-authorize', 'backend\JournalEntryController@journalAuthorize')->name('journalAuthorize');
    Route::get('/journal-view/{journal}', 'backend\JournalEntryController@journalView')->name('journalView');
    Route::get('/journal-authorize/{journal}', 'backend\JournalEntryController@journalMakeAuthorize')->name('journalMakeAuthorize');
    Route::post('journal/auth-decline/{journal}', 'backend\JournalEntryController@journaAuthDecline')->name('journaAuthDecline');
    Route::get('/journal-approve/{journal}', 'backend\JournalEntryController@journalMakeApprove')->name('journalMakeApprove');
    Route::post('journal/approve-decline/{journal}', 'backend\JournalEntryController@journaApproveDecline')->name('journaApproveDecline');
    Route::get('/journal-approval', 'backend\JournalEntryController@journalApproval')->name('journalApproval');

    //End Journal Entry
    
    // work by mominul
    // mapping 
    Route::resource('mapping', 'backend\MappingController');
    Route::post('account-head', 'backend\MappingController@account_head')->name('account-head');
    Route::post('account-code', 'backend\MappingController@account_code')->name('account-code');
    // brands
    Route::resource('brand', 'backend\BrandController');
    // group
    Route::resource('group', 'backend\GroupController');
    // list item
    Route::resource('item-list', 'backend\ItemListController');
    Route::post('item-type-no', 'backend\ItemListController@item_type_no')->name('item-type-no');
    Route::post('item-type-id', 'backend\ItemListController@item_type_id')->name('item-type-id');
    Route::post('brand-country', 'backend\ItemListController@brand_country')->name('brand-country');
    Route::get('item-delete/{id}', 'backend\ItemListController@item_delete')->name('item-list.item-delete');
    // Item purchases
    Route::resource('purchase-temp', 'backend\PurchaseTempController');
    Route::get('purchase-temp-trasfer/{id}', 'backend\PurchaseTempController@purchase_temp_trasfer')->name('purchase-temp-trasfer');
    Route::resource('item-purchase', 'backend\PurchaseDetailTempController');
    Route::get('purchase-print/{id}', 'backend\PurchaseDetailTempController@purchase_print')->name('purchase-print');
    Route::post('supplier-information', 'backend\PurchaseDetailTempController@supplier_information')->name('supplier-information');
    Route::post('temporary-item-list-store', 'backend\PurchaseDetailTempController@temporary_item_list_stor')->name('temporary-item-list-store');
    Route::get('temp-item-list-delete/{id}', 'backend\PurchaseDetailTempController@temp_item_delete')->name('temp-item-list-delete');
    
});
