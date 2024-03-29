<?php

namespace App\Http\Controllers\backend;

use App\DebitCreditVoucher;
use App\Http\Controllers\Controller;
use App\Journal;
use App\JournalRecord;
use App\JournalRecordsTemp;
use App\JournalTemp;
use App\Models\AccountHead;
use App\Models\CostCenter;
use App\PartyInfo;
use App\PayMode;
use App\PayTerm;
use App\ProjectDetail;
use App\TxnType;
use App\VatRate;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;
use SebastianBergmann\CodeCoverage\Report\Xml\Project;

class JournalEntryController extends Controller
{
    public function index(Request $request){

        $journals= JournalTemp::all();

        if($request->has('text')){
            $journals = JournalTemp::where('journal_no', $request->text)->get();
        }elseif($request->has('date')){
            $journals = JournalTemp::where('date', $request->date)->get();
        }elseif($request->has('from')){
            $journals = JournalTemp::whereBetween('date', [$request->from, $request->to])->get();
        }
       
        return view('backend.journal.index', compact('journals'));
    }

    public function preview($id){
        $journal= JournalTemp::find($id);
        return view('backend.journal.preview', compact('journal'));
    }

    public function search(Request $request){
        return $request;
    }

    public function journalEntry()
    {
        Gate::authorize('app.journal_entry');
        $projects = ProjectDetail::all();
        $modes = PayMode::all();
        $terms = PayTerm::all();
        $sub_invoice = Carbon::now()->format('Ymd');
        $cCenters = CostCenter::all();
        $txnTypes = TxnType::all();
        $acHeads = AccountHead::all();
        $pInfos = PartyInfo::all();
        $vats = VatRate::orderBy('id','desc')->get();
        // $journals=Journal::latest()->paginate(50);
        $latest_journal_no = Journal::withTrashed()->whereDate('created_at', Carbon::today())->where('journal_no', 'LIKE', "%{$sub_invoice}%")->latest()->first();
        // dd($latest_invoice_no);
        if ($latest_journal_no) {
            // $journal_no = preg_replace('/^j/', '', $latest_journal_no->journal_no);
            $journal_no = substr($latest_journal_no->journal_no,0,-1);

            // dd($journal_no);
            $journal_code = $journal_no + 1;
            $journal_no = $journal_code . "J";
        } else {
            $journal_no = Carbon::now()->format('Ymd') . '001' . "J";
        }

        $journals= JournalTemp::all();

        return view('backend.journal.journalEntry', compact('projects', 'journal_no', 'modes', 'terms', 'cCenters', 'txnTypes', 'acHeads', 'vats', 'pInfos','journals'));
    }

    public function credit_voucher(Request $request){
        $page_name="Credit Voucher";
        $search_action='credit-voucher';
        $vouchers= DebitCreditVoucher::where('type','CR')->get();
        
        if($request->has('text')){
            $text= $request->text;
            $vouchers = DebitCreditVoucher::where('type','CR')
                        ->whereHas('journal', function (Builder $query) use ($text) {
                            $query->where('journal_no', 'like', "%{$text}%");
                        })->get();

        }elseif($request->has('date')){
            $vouchers = DebitCreditVoucher::where('type', 'CR')->where('date', $request->date)->get();
        }elseif($request->has('from')){
            $vouchers = DebitCreditVoucher::where('type', 'CR')->whereBetween('date', [$request->from, $request->to])->get();
        }
        return view('backend.journal.debit-voucher-list',compact('vouchers','page_name','search_action'));
    }

    public function debit_voucher(Request $request){
        $page_name="Debit Voucher";
        $search_action='debit-voucher';  
        $vouchers= DebitCreditVoucher::where('type','DR')->get();

        if($request->has('text')){
            $text= $request->text;
            $vouchers = DebitCreditVoucher::where('type','DR')
                        ->whereHas('journal', function (Builder $query) use ($text) {
                            $query->where('journal_no', 'like', "%{$text}%");
                        })->get();
        }elseif($request->has('date')){
            $vouchers = DebitCreditVoucher::where('type', 'DR')->where('date', $request->date)->get();
        }elseif($request->has('from')){
            $vouchers = DebitCreditVoucher::where('type', 'DR')->whereBetween('date', [$request->from, $request->to])->get();
        }
        return view('backend.journal.debit-voucher-list',compact('vouchers','page_name','search_action'));
    }

    public function journal_voucher(Request $request){
        $page_name="Journal Voucher"; 
        $search_action='journal-voucher';
        $vouchers= DebitCreditVoucher::where('type','JOURNAL')->get();

        if($request->has('text')){
            $text= $request->text;
            $vouchers = DebitCreditVoucher::where('type','JOURNAL')
                        ->whereHas('journal', function (Builder $query) use ($text) {
                            $query->where('journal_no', 'like', "%{$text}%");
                        })->get();
        }elseif($request->has('date')){
            $vouchers = DebitCreditVoucher::where('type', 'JOURNAL')->where('date', $request->date)->get();
        }elseif($request->has('from')){
            $vouchers = DebitCreditVoucher::where('type', 'JOURNAL')->whereBetween('date', [$request->from, $request->to])->get();
        }

        return view('backend.journal.debit-voucher-list',compact('vouchers','page_name','search_action'));
    }

    public function voucher_details($id){
        $voucher= DebitCreditVoucher::find($id);
        // return $voucher->records;
        return view('backend.journal.voucher-details',compact('voucher'));
    }

    public function findProject(Request $request)
    {
        $project = ProjectDetail::where('id', $request->value)->first();
        return $project;
    }


    public function findCostCenter(Request $request)
    {
        $cc = CostCenter::where('cc_code', $request->value)->first();
        return $cc;
    }

    public function findCostCenterId(Request $request)
    {
        $cc_id = CostCenter::where('id', $request->value)->first();
        return $cc_id;
    }

    public function partyInfoInvoice2(Request $request)
    {
        // return $request->all();
        $info = PartyInfo::where('id', $request->value)->first();
        return $info;
    }

    public function findAccHead(Request $request)
    {
        $accHead = AccountHead::where('fld_ac_code', $request->value)->first();
        return $accHead;
    }

    public function findAccHeadId(Request $request)
    {
        $accHeadId = AccountHead::where('id', $request->value)->first();
        return $accHeadId;
    }


    public function findTaxRate(Request $request)
    {
        if($request->value!=null)
        {
            $vat = VatRate::where('id', $request->value)->first();
                
            $vat_rate=$vat->value;
            $amount=$request->amount;
            $vat_amount= $amount / (100+$vat_rate)* $vat_rate;
            $actual_price= $amount-$vat_amount;

        }
        else
        {
            $total_amount = $request->amount;
            $vat_amount = 0;
        }

        if ($request->ajax()) {
            return Response()->json([
                'vat_amount' => round($vat_amount,2),
                'total_amount' => round($actual_price,2),
            ]);
        }
        // return $vat_amount;
    }


    public function findamount(Request $request)
    {
        // return $request->all();

        if( $request->tax_rate!==null)
        {
            $vat = VatRate::where('id', $request->tax_rate)->first();
            $vat_rate=$vat->value;
            $amount=$request->amount;
            $vat_amount= $amount / (100+$vat_rate)* $vat_rate;
            $actual_price= $amount-$vat_amount;

      }
      else
      {
        $total_amount = $request->amount;
        $vat_amount =  0;
      }

      if ($request->ajax()) {
        return Response()->json([
            'vat_amount' => round($vat_amount,2),
            'total_amount' => round($actual_price,2),
        ]);
    }
        // return $vat_amount;
    }

    public function journalEntryPost_copy(Request $request)
    {
        return $request;

        return $request->input('group-a');

        $request->validate(
            [
                'project'        => 'required',
                'journal_no'         =>  'required',
                'date'         =>  'required',
                'invoice_no'         =>  'required',
                'cc_code' => 'required',
                'party_info' => 'required',
                // 'txn_type' => 'required',
                'pay_mode' => 'required',
                'ac_code' => 'required',
                'acc_head' => 'required',
                'amount' => 'required',
                'tax_rate' => 'required',
                'narration' => 'required'
            ],
            [
                'project.required' => 'Project Name is required',
                'journal_no.required' => 'Journal No is required',
                'date.required' => 'Date is required',
                'invoice_no.required' => 'nvoice No is required',
                'cc_code.required' => 'Cost Center is required',
                'party_info.required' => 'Party Info is required',
                // 'txn_type.required' => 'TXN Type is required',
                'pay_mode.required' => 'Pay Mode is required',
                'ac_code.required' => 'Account Code is required',
                'acc_head.required' => 'Account Head is required',
                'amount.required' => 'Amount is required',
                'tax_rate.required' => 'Tax Rate is required',
                'narration.required' => 'Narration is required',

            ]
        );


        $vat_rate= VatRate::find($request->tax_rate);
        $ac_head=AccountHead::find($request->acc_head);
        $party=PartyInfo::find($request->party_info);
        // return $vat_rate;

        // voucher scan upload
        if($request->hasFile('voucher_scan')){
            $voucher_scan= $request->file('voucher_scan');
            $name= $voucher_scan->getClientOriginalName();
            $name = pathinfo($name, PATHINFO_FILENAME);
            $ext= $voucher_scan->getClientOriginalExtension();
            $voucher_file_name= $name.time().'.'.$ext;
            $voucher_scan->storeAs( 'public/upload/documents', $voucher_file_name);
        }        


        $sub_invoice = Carbon::now()->format('Ymd');

        $latest_journal_no = JournalTemp::withTrashed()->whereDate('created_at', Carbon::today())->where('journal_no', 'LIKE', "%{$sub_invoice}%")->latest()->first();
        
        if ($latest_journal_no) {
            $journal_no = substr($latest_journal_no->journal_no,0,-1);
            $journal_code = $journal_no + 1;
            $journal_no = $journal_code . "J";
        } else {
            $journal_no = Carbon::now()->format('Ymd') . '001' . "J";
        }
        $journal= new JournalTemp();
        $journal->project_id        = $request->project;
        $journal->journal_no        = $journal_no;
        $journal->date              = $request->date;
        $journal->pay_mode          = $request->pay_mode;
        $journal->invoice_no        = $request->invoice_no;
        $journal->cost_center_id    = $request->cost_center_name;
        $journal->party_info_id     = $request->party_info;
        $journal->account_head_id   = $request->acc_head;
        $journal->amount            = $request->amount;
        $journal->tax_rate          = $vat_rate->value;
        $journal->vat_amount        = $request->vat_amount;
        $journal->total_amount      = $request->total_amount;
        $journal->narration         = $request->narration;
        
        if($request->hasFile('voucher_scan')){
            $journal->voucher_scan  = $voucher_file_name;
        }

        $journal->save();

        // return 'Done'; 

        if($request->transaction_type == 'Decrease'){
            if($ac_head->account_type_id== 2 || $ac_head->account_type_id== 5){
                $jl_record= new JournalRecordsTemp();
                $jl_record->journal_temp_id     = $journal->id;
                $jl_record->project_details_id  = $request->project;
                $jl_record->cost_center_id      = $request->cost_center_name;
                $jl_record->party_info_id       = $request->party_info;
                $jl_record->journal_no          = $journal_no;
                $jl_record->account_head_id     = $request->acc_head;
                $jl_record->master_account_id   = $ac_head->master_account_id;
                $jl_record->account_head        = $ac_head->fld_ac_head;
                $jl_record->amount              = $request->total_amount;
                $jl_record->transaction_type    = 'DR';
                $jl_record->journal_date        = $request->date;
                $jl_record->save();

                $jl_record= new JournalRecordsTemp();
                $jl_record->journal_temp_id     = $journal->id;
                $jl_record->project_details_id  = $request->project;
                $jl_record->cost_center_id      = $request->cost_center_name;
                $jl_record->party_info_id       = $request->party_info;
                $jl_record->journal_no          = $journal_no;
                $jl_record->account_head_id     = 219;
                $jl_record->master_account_id   = 2;
                $jl_record->account_head        = 'Cash Operating Account';
                $jl_record->amount              = $request->amount;
                $jl_record->transaction_type    = 'CR';
                $jl_record->journal_date        = $request->date;
                $jl_record->save();
            }else if($ac_head->account_type_id== 1 || $ac_head->account_type_id== 4){

                $jl_record= new JournalRecordsTemp();
                $jl_record->journal_temp_id     = $journal->id;
                $jl_record->project_details_id  = $request->project;
                $jl_record->cost_center_id      = $request->cost_center_name;
                $jl_record->party_info_id       = $request->party_info;
                $jl_record->journal_no          = $journal_no;
                $jl_record->account_head_id     = 219;
                $jl_record->master_account_id   = 2;
                $jl_record->account_head        = 'Cash Operating Account';
                $jl_record->amount              = $request->amount;
                $jl_record->transaction_type    = 'DR';
                $jl_record->journal_date        = $request->date;
                $jl_record->save();

                $jl_record= new JournalRecordsTemp();
                $jl_record->journal_temp_id     = $journal->id;
                $jl_record->project_details_id  = $request->project;
                $jl_record->cost_center_id      = $request->cost_center_name;
                $jl_record->party_info_id       = $request->party_info;
                $jl_record->journal_no          = $journal_no;
                $jl_record->account_head_id     = 221;
                $jl_record->master_account_id   = 3;
                $jl_record->account_head        = 'Accounts Receivable - Goods Sold on Credit';
                $jl_record->amount              = $request->amount;
                $jl_record->transaction_type    = 'CR';
                $jl_record->journal_date        = $request->date;
                $jl_record->save();
            }

            return back()->with('success',"Successfully Added");
        }


        if($request->pay_mode == 'NonCash'){
            // echo "Shagor";

            if($ac_head->account_type_id== 4){
                // echo "nodi";
                $jl_record= new JournalRecordsTemp();
                $jl_record->journal_temp_id     = $journal->id;
                $jl_record->project_details_id  = $request->project;
                $jl_record->cost_center_id      = $request->cost_center_name;
                $jl_record->party_info_id       = $request->party_info;
                $jl_record->journal_no          = $journal_no;
                $jl_record->account_head_id     = $request->acc_head;
                $jl_record->master_account_id   = $ac_head->master_account_id;
                $jl_record->account_head        = $ac_head->fld_ac_head;
                $jl_record->amount              = $request->total_amount;
                $jl_record->transaction_type    = 'DR';
                $jl_record->journal_date        = $request->date;
                $jl_record->save();

                $ac_head_2= AccountHead::find($request->acc_head_2);
                
                $jl_record= new JournalRecordsTemp();
                $jl_record->journal_temp_id     = $journal->id;
                $jl_record->project_details_id  = $request->project;
                $jl_record->cost_center_id      = $request->cost_center_name;
                $jl_record->party_info_id       = $request->party_info;
                $jl_record->journal_no          = $journal_no;
                $jl_record->account_head_id     = $request->acc_head_2;
                $jl_record->master_account_id   = $ac_head_2->master_account_id;
                $jl_record->account_head        = $ac_head_2->fld_ac_head;
                $jl_record->amount              = $request->total_amount;
                $jl_record->transaction_type    = 'CR';
                $jl_record->journal_date        = $request->date;
                $jl_record->save();
            }
        }       


        if(($ac_head->account_type_id== 1 || $ac_head->account_type_id== 4) && $request->pay_mode != 'NonCash'){
            // if it is expense or asset

            $jl_record= new JournalRecordsTemp();
            $jl_record->journal_temp_id     = $journal->id;
            $jl_record->project_details_id  = $request->project;
            $jl_record->cost_center_id      = $request->cost_center_name;
            $jl_record->party_info_id       = $request->party_info;
            $jl_record->journal_no          = $journal_no;
            $jl_record->account_head_id     = $request->acc_head;
            $jl_record->master_account_id   = $ac_head->master_account_id;
            $jl_record->account_head        = $ac_head->fld_ac_head;
            $jl_record->amount              = $request->total_amount;
            $jl_record->transaction_type    = 'DR';
            $jl_record->journal_date        = $request->date;
            $jl_record->save();

            if($request->tax_rate == 3 || $request->tax_rate ==4){
                $jl_record= new JournalRecordsTemp();
                $jl_record->journal_temp_id     = $journal->id;
                $jl_record->project_details_id  = $request->project;
                $jl_record->cost_center_id      = $request->cost_center_name;
                $jl_record->party_info_id       = $request->party_info;
                $jl_record->journal_no          = $journal_no;
                $jl_record->account_head_id     = 224;
                $jl_record->master_account_id   = 13;
                $jl_record->account_head        = 'Vat Account';
                $jl_record->amount              = $request->vat_amount;
                $jl_record->transaction_type    = 'DR';
                $jl_record->journal_date        = $request->date;
                $jl_record->save();
            }

            if($request->pay_mode=='Cash' || $request->pay_mode=='Card'){
                $jl_record= new JournalRecordsTemp();
                $jl_record->journal_temp_id     = $journal->id;
                $jl_record->project_details_id  = $request->project;
                $jl_record->cost_center_id      = $request->cost_center_name;
                $jl_record->party_info_id       = $request->party_info;
                $jl_record->journal_no          = $journal_no;
                $jl_record->account_head_id     = 219;
                $jl_record->master_account_id   = 2;
                $jl_record->account_head        = 'Cash Operating Account';
                $jl_record->amount              = $request->amount;
                $jl_record->transaction_type    = 'CR';
                $jl_record->journal_date        = $request->date;
                $jl_record->save();
            }elseif($request->pay_mode=='Credit'){
                $jl_record= new JournalRecordsTemp();
                $jl_record->journal_temp_id     = $journal->id;
                $jl_record->project_details_id  = $request->project;
                $jl_record->cost_center_id      = $request->cost_center_name;
                $jl_record->party_info_id       = $request->party_info;
                $jl_record->journal_no          = $journal_no;
                $jl_record->account_head_id     = 222;
                $jl_record->master_account_id   = 4;
                $jl_record->account_head        = 'Trade Accounts Payable';
                $jl_record->amount              = $request->amount;
                $jl_record->transaction_type    = 'CR';
                $jl_record->journal_date        = $request->date;
                $jl_record->save();
            }
        }elseif($request->pay_mode != 'NonCash' && ($ac_head->account_type_id== 2 || $ac_head->account_type_id== 3 || $ac_head->account_type_id== 5)){
            // if it is income, liability or equity

            if($request->pay_mode=='Cash' || $request->pay_mode=='Card'){
                $jl_record= new JournalRecordsTemp();
                $jl_record->journal_temp_id     = $journal->id;
                $jl_record->project_details_id  = $request->project;
                $jl_record->cost_center_id      = $request->cost_center_name;
                $jl_record->party_info_id       = $request->party_info;
                $jl_record->journal_no          = $journal_no;
                $jl_record->account_head_id     = 219;
                $jl_record->master_account_id   = 2;
                $jl_record->account_head        = 'Cash Operating Account';
                $jl_record->amount              = $request->amount;
                $jl_record->transaction_type    = 'DR';
                $jl_record->journal_date        = $request->date;
                $jl_record->save();
            }elseif($request->pay_mode=='Credit'){
                $jl_record= new JournalRecordsTemp();
                $jl_record->journal_temp_id     = $journal->id;
                $jl_record->project_details_id  = $request->project;
                $jl_record->cost_center_id      = $request->cost_center_name;
                $jl_record->party_info_id       = $request->party_info;
                $jl_record->journal_no          = $journal_no;
                $jl_record->account_head_id     = 221;
                $jl_record->master_account_id   = 3;
                $jl_record->account_head        = 'Accounts Receivable - Goods Sold on Credit';
                $jl_record->amount              = $request->amount;
                $jl_record->transaction_type    = 'DR';
                $jl_record->journal_date        = $request->date;
                $jl_record->save();
            }

            if($request->tax_rate == 3 || $request->tax_rate ==4){
                $jl_record= new JournalRecordsTemp();
                $jl_record->journal_temp_id     = $journal->id;
                $jl_record->project_details_id  = $request->project;
                $jl_record->cost_center_id      = $request->cost_center_name;
                $jl_record->party_info_id       = $request->party_info;
                $jl_record->journal_no          = $journal_no;
                $jl_record->account_head_id     = 223;
                $jl_record->master_account_id   = 7;
                $jl_record->account_head        = 'VAT Payable';
                $jl_record->amount              = $request->vat_amount;
                $jl_record->transaction_type    = 'CR';
                $jl_record->journal_date        = $request->date;
                $jl_record->save();
            }

            $jl_record= new JournalRecordsTemp();
            $jl_record->journal_temp_id     = $journal->id;
            $jl_record->project_details_id  = $request->project;
            $jl_record->cost_center_id      = $request->cost_center_name;
            $jl_record->party_info_id       = $request->party_info;
            $jl_record->journal_no          = $journal_no;
            $jl_record->account_head_id     = $request->acc_head;
            $jl_record->master_account_id   = $ac_head->master_account_id;
            $jl_record->account_head        = $ac_head->fld_ac_head;
            $jl_record->amount              = $request->total_amount;
            $jl_record->transaction_type    = 'CR';
            $jl_record->journal_date        = $request->date;
            $jl_record->save();
        }


        //Debit Voucher Or Credit Voucher 
        $voucher_type="DR";
        if(($request->pay_mode == 'Cash' || $request->pay_mode == 'Card')  && ($ac_head->account_type_id== 1 || $ac_head->account_type_id== 4 ) ){
            // if it is expense or asset
            $voucher_type = 'DR';            
        }elseif( ($request->pay_mode == 'Cash' || $request->pay_mode == 'Card')  && ($ac_head->account_type_id== 2 || $ac_head->account_type_id== 3 || $ac_head->account_type_id== 5)){
            // if it is income, liability or equity
            $voucher_type = 'CR';
        }elseif($request->pay_mode == 'Credit'){
            $voucher_type            = 'JOURNAL';
        }

        $dr_cr_voucher= new DebitCreditVoucher;
        $dr_cr_voucher->journal_id      = $journal->id;
        $dr_cr_voucher->project_id      = $request->project;
        $dr_cr_voucher->cost_center_id  = $request->cost_center_name;
        $dr_cr_voucher->party_info_id   = $request->party_info;
        $dr_cr_voucher->account_head_id = $request->acc_head;
        $dr_cr_voucher->pay_mode        = $request->pay_mode;
        $dr_cr_voucher->amount          = $request->amount;
        $dr_cr_voucher->narration       = $request->narration;
        $dr_cr_voucher->type            = $voucher_type;
        $dr_cr_voucher->date            = $request->date;
        $dr_cr_voucher->save();

        return back()->with('success',"Successfully Added");
    }

    public function journalEntryPost(Request $request)
    {
        // return $request;

        // return $request->input('group-a');

        $request->validate(
            [
                'project'           => 'required',
                'journal_no'        =>  'required',
                'date'              =>  'required',
                'invoice_no'        =>  'required',
                'cc_code'           => 'required',
                'party_info'        => 'required',
                'pay_mode'          => 'required',
                'narration'         => 'required'
            ],
            [
                'project.required'      => 'Project Name is required',
                'journal_no.required'   => 'Journal No is required',
                'date.required'         => 'Date is required',
                'invoice_no.required'   => 'nvoice No is required',
                'cc_code.required'      => 'Cost Center is required',
                'party_info.required'   => 'Party Info is required',
                'pay_mode.required'     => 'Pay Mode is required',
                'narration.required'    => 'Narration is required',

            ]
        );

        $multi_head=$request->input('group-a');
        $total_vat=0;
        $total_amount_withvat=0;
        $total_amount=0;
        foreach($multi_head as $each_head){
            $vat_amount=$each_head['multi_total_amount'] - $each_head['multi_amount'];
            $total_vat= $total_vat+ $vat_amount;
            $total_amount_withvat= $total_amount_withvat + $each_head['multi_total_amount'];
            $total_amount= $total_amount + $each_head['multi_amount'];
        }


        // voucher scan upload
        if($request->hasFile('voucher_scan')){
            $voucher_scan= $request->file('voucher_scan');
            $name= $voucher_scan->getClientOriginalName();
            $name = pathinfo($name, PATHINFO_FILENAME);
            $ext= $voucher_scan->getClientOriginalExtension();
            $voucher_file_name= $name.time().'.'.$ext;
            $voucher_scan->storeAs( 'public/upload/documents', $voucher_file_name);
        }        


        $sub_invoice = Carbon::now()->format('Ymd');

        $latest_journal_no = JournalTemp::withTrashed()->whereDate('created_at', Carbon::today())->where('journal_no', 'LIKE', "%{$sub_invoice}%")->latest()->first();
        
        if ($latest_journal_no) {
            $journal_no = substr($latest_journal_no->journal_no,0,-1);
            $journal_code = $journal_no + 1;
            $journal_no = $journal_code . "J";
        } else {
            $journal_no = Carbon::now()->format('Ymd') . '001' . "J";
        }
        $journal= new JournalTemp();
        $journal->project_id        = $request->project;
        $journal->journal_no        = $journal_no;
        $journal->date              = $request->date;
        $journal->pay_mode          = $request->pay_mode;
        $journal->invoice_no        = $request->invoice_no;
        $journal->cost_center_id    = $request->cost_center_name;
        $journal->party_info_id     = $request->party_info;
        $journal->account_head_id   = 123;
        $journal->amount            = $total_amount;
        $journal->tax_rate          = 0;
        $journal->vat_amount        = $total_vat;
        $journal->total_amount      = $total_amount_withvat;
        $journal->narration         = $request->narration;
        $journal->created_by        = Auth::id();
        
        if($request->hasFile('voucher_scan')){
            $journal->voucher_scan  = $voucher_file_name;
        }

        $journal->save();



        $type='';
        foreach($multi_head as $each_head){
            $ac_head= AccountHead::find($each_head['multi_acc_head']);

            if($ac_head->account_type_id== 1 || $ac_head->account_type_id== 4){
                // if it is expense or asset
                if($request->transaction_type=='Decrease'){
                    $type='CR';
                }else{
                    $type='DR';
                }

                $jl_record= new JournalRecordsTemp();
                $jl_record->journal_temp_id     = $journal->id;
                $jl_record->project_details_id  = $request->project;
                $jl_record->cost_center_id      = $request->cost_center_name;
                $jl_record->party_info_id       = $request->party_info;
                $jl_record->journal_no          = $journal_no;
                $jl_record->account_head_id     = $each_head['multi_acc_head'];
                $jl_record->master_account_id   = $ac_head->master_account_id;
                $jl_record->account_head        = $ac_head->fld_ac_head;
                $jl_record->amount              = $each_head['multi_amount'];
                $jl_record->transaction_type    = $type;
                $jl_record->journal_date        = $request->date;
                $jl_record->save();
                
            }elseif($ac_head->account_type_id== 2 || $ac_head->account_type_id== 3 || $ac_head->account_type_id== 5){
                
                if($request->transaction_type=='Decrease'){
                    $type='DR';
                }else{
                    $type='CR';
                }

                $jl_record= new JournalRecordsTemp();
                $jl_record->journal_temp_id     = $journal->id;
                $jl_record->project_details_id  = $request->project;
                $jl_record->cost_center_id      = $request->cost_center_name;
                $jl_record->party_info_id       = $request->party_info;
                $jl_record->journal_no          = $journal_no;
                $jl_record->account_head_id     = $each_head['multi_acc_head'];
                $jl_record->master_account_id   = $ac_head->master_account_id;
                $jl_record->account_head        = $ac_head->fld_ac_head;
                $jl_record->amount              = $each_head['multi_amount'];
                $jl_record->transaction_type    = $type;
                $jl_record->journal_date        = $request->date;
                $jl_record->save();
                
            }
        }

        // vat entry to journal
        if($total_vat>0){
            $vat_ac_head= AccountHead::find(224);
            $jl_record= new JournalRecordsTemp();
            $jl_record->journal_temp_id     = $journal->id;
            $jl_record->project_details_id  = $request->project;
            $jl_record->cost_center_id      = $request->cost_center_name;
            $jl_record->party_info_id       = $request->party_info;
            $jl_record->journal_no          = $journal_no;
            $jl_record->account_head_id     = $vat_ac_head->id;
            $jl_record->master_account_id   = $vat_ac_head->master_account_id;
            $jl_record->account_head        = $vat_ac_head->fld_ac_head;
            $jl_record->amount              = $total_vat;
            $jl_record->transaction_type    = $type;
            $jl_record->journal_date        = $request->date;
            $jl_record->save();
        }

        // Opposit entry of journal
        if($request->pay_mode=='Cash' || $request->pay_mode=='Card'){
            $ac_head= AccountHead::find(219);
            $opposit_type= $type=='DR' ? 'CR' : 'DR';
            $jl_record= new JournalRecordsTemp();
            $jl_record->journal_temp_id     = $journal->id;
            $jl_record->project_details_id  = $request->project;
            $jl_record->cost_center_id      = $request->cost_center_name;
            $jl_record->party_info_id       = $request->party_info;
            $jl_record->journal_no          = $journal_no;
            $jl_record->account_head_id     = $ac_head->id;
            $jl_record->master_account_id   = $ac_head->master_account_id;
            $jl_record->account_head        = $ac_head->fld_ac_head;
            $jl_record->amount              = $total_amount_withvat;
            $jl_record->transaction_type    = $opposit_type;
            $jl_record->journal_date        = $request->date;
            $jl_record->save();
        
        }elseif($request->pay_mode=='Credit'){
            if($type=='DR'){
                $ac_head= AccountHead::find(222); // accounts payable
                $opposit_type='CR';
            }else{
                $ac_head= AccountHead::find(221); // accounts receivable
                $opposit_type='DR';
            }

            $jl_record= new JournalRecordsTemp();
            $jl_record->journal_temp_id     = $journal->id;
            $jl_record->project_details_id  = $request->project;
            $jl_record->cost_center_id      = $request->cost_center_name;
            $jl_record->party_info_id       = $request->party_info;
            $jl_record->journal_no          = $journal_no;
            $jl_record->account_head_id     = $ac_head->id;
            $jl_record->master_account_id   = $ac_head->master_account_id;
            $jl_record->account_head        = $ac_head->fld_ac_head;
            $jl_record->amount              = $total_amount_withvat;
            $jl_record->transaction_type    = $opposit_type;
            $jl_record->journal_date        = $request->date;
            $jl_record->save();
            
        }elseif($request->pay_mode == 'NonCash'){
            // Non cash credit

            if($type=='DR'){
                $opposit_noncash='CR';
            }else{
                $opposit_noncash='DR';
            }

            $ac_head_2= AccountHead::find($request->acc_head_2);
                
            $jl_record= new JournalRecordsTemp();
            $jl_record->journal_temp_id     = $journal->id;
            $jl_record->project_details_id  = $request->project;
            $jl_record->cost_center_id      = $request->cost_center_name;
            $jl_record->party_info_id       = $request->party_info;
            $jl_record->journal_no          = $journal_no;
            $jl_record->account_head_id     = $request->acc_head_2;
            $jl_record->master_account_id   = $ac_head_2->master_account_id;
            $jl_record->account_head        = $ac_head_2->fld_ac_head;
            $jl_record->amount              = $total_amount_withvat;
            $jl_record->transaction_type    = $opposit_noncash;
            $jl_record->journal_date        = $request->date;
            $jl_record->save();
        }


        //Debit Voucher Or Credit Voucher 
        $voucher_type="DR";
        if(($request->pay_mode == 'Cash' || $request->pay_mode == 'Card')  && ($type== 'DR' ) ){
            // if it is expense or asset
            $voucher_type = 'DR';            
        }elseif( ($request->pay_mode == 'Cash' || $request->pay_mode == 'Card')  && ($type=='CR')){
            // if it is income, liability or equity
            $voucher_type = 'CR';
        }elseif($request->pay_mode == 'Credit'){
            $voucher_type            = 'JOURNAL';
        }

        $journal->voucher_type          = $voucher_type;
        $journal->save();

        // $dr_cr_voucher= new DebitCreditVoucher;
        // $dr_cr_voucher->journal_id      = $journal->id;
        // $dr_cr_voucher->project_id      = $request->project;
        // $dr_cr_voucher->cost_center_id  = $request->cost_center_name;
        // $dr_cr_voucher->party_info_id   = $request->party_info;
        // $dr_cr_voucher->account_head_id = 0;
        // $dr_cr_voucher->pay_mode        = $request->pay_mode;
        // $dr_cr_voucher->amount          = $total_amount_withvat;
        // $dr_cr_voucher->narration       = $request->narration;
        // $dr_cr_voucher->type            = $voucher_type;
        // $dr_cr_voucher->date            = $request->date;
        // $dr_cr_voucher->save();

        return back()->with('success',"Successfully Added");
    }

    public function journalEntryEditPost(Request $request,$journal)
    {

        $request->validate(
            [
                'project'        => 'required',
                // 'owner'        => 'required',
                // 'location'         =>  'required',
                // 'mobile'         =>  'required',
                'journal_no'         =>  'required',
                'date'         =>  'required',
                'invoice_no'         =>  'required',
                'cc_code' => 'required',
                'party_info' => 'required',
                'txn_type' => 'required',
                'pay_mode' => 'required',
                'ac_code' => 'required',
                'acc_head' => 'required',
                'amount' => 'required',
                'tax_rate' => 'required',
                'narration' => 'required'
            ],
            [
                'project.required' => 'Project Name is required',
                // 'owner.required' => 'Owner is required',
                // 'location.required' => 'Location is required',
                // 'mobile.required' => 'Mobile is required',
                'journal_no.required' => 'Journal No is required',
                'date.required' => 'Date is required',
                'invoice_no.required' => 'nvoice No is required',
                'cc_code.required' => 'Cost Center is required',
                'party_info.required' => 'Party Info is required',
                'txn_type.required' => 'TXN Type is required',
                'pay_mode.required' => 'Pay Mode is required',
                'ac_code.required' => 'Account Code is required',
                'acc_head.required' => 'Account Head is required',
                'amount.required' => 'Amount is required',
                'tax_rate.required' => 'Tax Rate is required',
                'narration.required' => 'Narration is required',

            ]
        );


        $journal=Journal::find($journal);
        if(!$journal)
        {
            return back()->with('error', "Not Found");

        }
        // dd($request->credit_party_info);
        $journal->project_id = $request->project;
        $journal->date = $request->date;
        $journal->invoice_no = $request->invoice_no;
        $journal->cost_center_id = $request->cost_center_name;
        $journal->party_info_id = $request->party_info;
        $journal->txn_type = $request->txn_type;
        $journal->txn_mode = $request->pay_mode;
        $journal->ac_head_id = $request->acc_head;
        $journal->amount = $request->amount;
        $journal->tax_rate = $request->tax_rate;
        $journal->vat_amount = $request->vat_amount;
        $journal->total_amount = $request->total_amount;
        $journal->credit_party_info = $request->credit_party_info;
        $journal->narration = $request->narration;
        $journal->state = "Authorization";
        $journal->comment = null;
        $save = $journal->save();
        return back()->with('success',"Successfully Updated");
    }


    public function journalEdit($journal)
    {
        $journalF=Journal::find($journal);
        if(!$journalF)
        {
            return back()->with('error', "Not Found");

        }
        $projects = ProjectDetail::all();
        $modes = PayMode::all();
        $terms = PayTerm::all();
        $sub_invoice = Carbon::now()->format('Ymd');
        $cCenters = CostCenter::all();
        $txnTypes = TxnType::all();
        $acHeads = AccountHead::all();
        $pInfos = PartyInfo::all();
        $vats = VatRate::all();
        $journals=Journal::latest()->paginate(50);

        return view('backend.journal.journalEntry', compact('projects', 'journalF', 'modes', 'terms', 'cCenters', 'txnTypes', 'acHeads', 'vats', 'pInfos','journals'));
    }

    public function journalDelete($journal)
    {
        $journal=Journal::find($journal);
        if(!$journal)
        {
            return back()->with('error', "Not Found");
        }
        $journal->forceDelete();
        return redirect()->route('journalEntry')->with('success','Deleted Successfully');
    }


    public function journaAuthDecline(Request $request, $journal)
    {
        $journal=Journal::find($journal);
        if(!$journal)
        {
            return back()->with('error', "Not Found");
        }
        $journal->state='Entry';
        $journal->comment=$request->comment;
        $journal->checked=false;
        $journal->save();
        return redirect()->route('journalAuthorize')->with('success','Authorization Decline');
    }



    public function journaApproveDecline(Request $request, $journal)
    {
        $journal=Journal::find($journal);
        if(!$journal)
        {
            return back()->with('error', "Not Found");
        }
        $journal->state='Entry';
        $journal->comment=$request->comment;
        $journal->authorized=false;
        $journal->checked=false;
        $journal->save();
        return redirect()->route('journalApproval')->with('success','Approval Declinedssss');
    }

    function convert_number($number) 
    {
        if (($number < 0) || ($number > 999999999)) 
        {
            throw new Exception("Number is out of range");
        }
        $giga = floor($number / 1000000);
        // Millions (giga)
        $number -= $giga * 1000000;
        $kilo = floor($number / 1000);
        // Thousands (kilo)
        $number -= $kilo * 1000;
        $hecto = floor($number / 100);
        // Hundreds (hecto)
        $number -= $hecto * 100;
        $deca = floor($number / 10);
        // Tens (deca)
        $n = $number % 10;
        // Ones
        $result = "";
        if ($giga) 
        {
            $result .= $this->convert_number($giga) .  "Million";
        }
        if ($kilo) 
        {
            $result .= (empty($result) ? "" : " ") .$this->convert_number($kilo) . " Thousand";
        }
        if ($hecto) 
        {
            $result .= (empty($result) ? "" : " ") .$this->convert_number($hecto) . " Hundred";
        }
        $ones = array("", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eightteen", "Nineteen");
        $tens = array("", "", "Twenty", "Thirty", "Fourty", "Fifty", "Sixty", "Seventy", "Eigthy", "Ninety");
        if ($deca || $n) {
            if (!empty($result)) 
            {
                $result .= " and ";
            }
            if ($deca < 2) 
            {
                $result .= $ones[$deca * 10 + $n];
            } else {
                $result .= $tens[$deca];
                if ($n) 
                {
                    $result .= "-" . $ones[$n];
                }
            }
        }
        if (empty($result)) 
        {
            $result = "zero";
        }
        return $result;
    }

    public function journalAuthorize()
    {
        Gate::authorize('app.journal_authorize');
        $journals= JournalTemp::where('authorized',0)->latest()->get();
        $type="Authorize";
        return view('backend.journal.journalAuthorize', compact('journals','type'));
    }

    public function journalView($journal)
    {
        $journal= JournalTemp::find($journal);
        if(!$journal)
        {
            return back()->with('error', "Not Found");
        }
       return view('backend.journal.journalView', compact('journal'));
    }

    public function journalMakeAuthorize($journal)
    {
        $journal=JournalTemp::find($journal);
        if(!$journal)
        {
            return back()->with('error', "Not Found");
        }
        $journal->authorized=true;
        $journal->authorized_by=Auth::id();
        $journal->save();
        return redirect()->route('journalAuthorize')->with('success','Successfully Authorized');
    }

    public function journalMakeApprove($journal)
    {
        $journal=JournalTemp::find($journal);
        dd($journal->records);
        if(!$journal)
        {
            return back()->with('error', "Not Found");
        }

        $sub_invoice = Carbon::now()->format('Ymd');
        $latest_journal_no = Journal::withTrashed()->whereDate('created_at', Carbon::today())->where('journal_no', 'LIKE', "%{$sub_invoice}%")->latest()->first();
        if ($latest_journal_no) {
            $journal_no = substr($latest_journal_no->journal_no,0,-1);
            $journal_code = $journal_no + 1;
            $journal_no = $journal_code . "J";
        } else {
            $journal_no = Carbon::now()->format('Ymd') . '001' . "J";
        }
        $ApproveJournal=new Journal();
        $ApproveJournal->project_id=$journal->project_id;
        $ApproveJournal->journal_no=$journal_no;
        $ApproveJournal->date=$journal->date;
        $ApproveJournal->invoice_no=$journal->invoice_no;
        $ApproveJournal->cost_center_id=$journal->cost_center_id;
        $ApproveJournal->party_info_id=$journal->party_info_id;
        $ApproveJournal->account_head_id=$journal->account_head_id;
        $ApproveJournal->created_by=$journal->created_by;
        $ApproveJournal->editedby_id=$journal->editedby_id;
        $ApproveJournal->authorized=$journal->authorized;
        $ApproveJournal->approved=true;
        $ApproveJournal->pay_mode=$journal->pay_mode;
        $ApproveJournal->amount=$journal->amount;
        $ApproveJournal->tax_rate=$journal->tax_rate;
        $ApproveJournal->vat_amount=$journal->vat_amount;
        $ApproveJournal->total_amount=$journal->total_amount;
        $ApproveJournal->narration=$journal->narration;
        $ApproveJournal->voucher_scan=$journal->voucher_scan;
        $ApproveJournal->voucher_type=$journal->voucher_type;
        $ApproveJournal->authorized_by=$journal->authorized_by;
        $ApproveJournal->approved_by=Auth::id();
        $journal->authorized_by         =$journal->authorized_by;
        $journal->editedby_id         =$journal->editedby_id;
        $ApproveJournal->created_by=$journal->created_by;
        $ApproveJournal->save();

        foreach($journal->records as $item)
        {
            $appJournalRec= new JournalRecord();
                $appJournalRec->journal_id     =  $ApproveJournal->id;
                $appJournalRec->project_details_id  = $item->project_details_id;
                $appJournalRec->cost_center_id      = $item->cost_center_id;
                $appJournalRec->party_info_id       = $item->party_info_id;
                $appJournalRec->journal_no          =  $ApproveJournal->journal_no;
                $appJournalRec->account_head_id     = $item->account_head_id;
                $appJournalRec->master_account_id   = $item->master_account_id;
                $appJournalRec->account_head        = $item->account_head;
                $appJournalRec->amount              = $item->amount;
                $appJournalRec->transaction_type    = $item->transaction_type;
                $appJournalRec->journal_date        = $item->journal_date;
                $appJournalRec->save();
        }


        $journal->records()->forceDelete();
        $journal->forceDelete();


        //Debit Voucher Or Credit Voucher 
        $voucher_type="DR";
        if(($ApproveJournal->pay_mode == 'Cash' || $ApproveJournal->pay_mode == 'Card')  && ($journal->voucher_type == 'DR' ) ){
            // if it is expense or asset
            $voucher_type = 'DR';            
        }elseif( ($ApproveJournal->pay_mode == 'Cash' || $ApproveJournal->pay_mode == 'Card')  && ($journal->voucher_type =='CR')){
            // if it is income, liability or equity
            $voucher_type = 'CR';
        }elseif($ApproveJournal->pay_mode == 'Credit'){
            $voucher_type            = 'JOURNAL';
        }

        $dr_cr_voucher= new DebitCreditVoucher();
        $dr_cr_voucher->journal_id      = $ApproveJournal->id;
        $dr_cr_voucher->project_id      =  $ApproveJournal->project_id;
        $dr_cr_voucher->cost_center_id  = 1;
        $dr_cr_voucher->party_info_id   =  $ApproveJournal->party_info_id;
        $dr_cr_voucher->account_head_id = 0;
        $dr_cr_voucher->pay_mode        = $ApproveJournal->pay_mode;
        $dr_cr_voucher->amount          = $ApproveJournal->total_amount;
        $dr_cr_voucher->narration       = $ApproveJournal->narration;
        $dr_cr_voucher->type            = $voucher_type;
        $dr_cr_voucher->date            = $ApproveJournal->date;
        $dr_cr_voucher->save();

        return redirect()->route('journalApproval')->with('success','Successfully Authorized');
    }

    public function Journals()
    {
        
        $journals= Journal::orderBy('id','DESC')->get();

        return view('backend.journal.journals', compact('journals'));
    }

    public function ApprovedjournalView($journal)
    {
        $journal= Journal::find($journal);
        if(!$journal)
        {
            return back()->with('error', "Not Found");
        }
       return view('backend.journal.ApprovedjournalView', compact('journal'));
    }

    public function journalApproval()
    {
        Gate::authorize('app.journal_approval');
        $journals=JournalTemp::where('authorized', true)->where('approved', false)->paginate(25);
        $type="Approval";
        return view('backend.journal.journalAuthorize', compact('journals','type'));
    }
}
