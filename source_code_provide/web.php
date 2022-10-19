
//Journal Entry
Route::get('/journal-entry', 'backend\JournalEntryController@journalEntry')->name('journalEntry');
Route::get('/journal', 'backend\JournalEntryController@index')->name('journal.index');
Route::get('/journal-preview/{id}', 'backend\JournalEntryController@preview')->name('journal-preview');
// Route::get('/journal', 'backend\JournalEntryController@search')->name('journal.search');


// new receipt voucher
Route::get('form-receipt-voucher','backend\NewReceiptVoucher@receipt_voucher_form')->name('form-receipt-voucher');
Route::POST('get-invoice-details','backend\NewReceiptVoucher@get_invoice_details')->name('get-invoice-details');
Route::POST('receipt-voucher-store','backend\NewReceiptVoucher@receipt_voucher_store')->name('store-receipt-voucher');
Route::get('receipt-voucher-print/{id}','backend\NewReceiptVoucher@receipt_voucher_print')->name('store-receipt-print');
