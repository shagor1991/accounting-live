<div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow print-hidden" data-scroll-to-active="true">
    <div class="navbar-header">
        <ul class="nav navbar-nav flex-row">
            <li class="nav-item mr-auto"><a class="navbar-brand" href="{{ asset('assets/backend')}}/html/ltr/vertical-menu-boxicons-template/index.html">

                    @php
                        $settings= \App\Setting::where('config_name', 'company_name')->first()
                    @endphp

                    <p style="font-size: 14px; color: #fff;">{{ $settings->config_value}}</p>
                </a></li>
        </ul>
    </div>
    <div class="shadow-bottom"></div>
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation" data-icon-style="">
            
            @if (Auth::user()->hasPermissionAny(['app.mapping.index','app.project.index','app.bank_details.index']))
            <li class="nav-item"><a href="#"><i class="bx bx-user-plus"></i><span class="menu-title text-truncate" data-i18n="File">File</span></a>
                <ul class="menu-content">

                    @if (Auth::user()->hasPermission('app.mapping.index'))
                        <li class="{{ Request::is('mapping*') ? 'active' : ''}}">
                            <a class="d-flex align-items-center" href="{{route('mapping.index')}}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Maping">Maping</span>
                            </a>
                        </li> 
                    @endif

                    @if (Auth::user()->hasPermission('app.project.index'))
                    <li class="{{ Request::is('project-details*') ? 'active' : ''}}">
                        <a class="d-flex align-items-center" href="{{ route('projectDetails') }}">
                            <i class="bx bx-right-arrow-alt"></i>
                            <span class="menu-item text-truncate" data-i18n="Maping">Business Details</span>
                        </a>
                    </li>
                    @endif

                    @if (Auth::user()->hasPermission('app.bank_details.index'))
                    <li class="{{ Request::is('bank-details*') ? 'active' : ''}}">
                        <a class="d-flex align-items-center" href="{{ route('bankDetails') }}">
                            <i class="bx bx-right-arrow-alt"></i>
                            <span class="menu-item text-truncate" data-i18n="Bank details">Bank details</span>
                        </a>
                    </li>
                    @endif

                </ul>
            </li>
            @endif

            @if (Auth::user()->hasPermissionAny(['app.master_account.index','app.account_head.index','app.cost_center.index', 'app.profit_center.index', 'app.party_info.index', 'app.journal_entry', 'app.acreport.gl', 'app.acreport.tb', 'app.acreport.is', 'app.acreport.bs', 'app.acreport.cfs', 'app.document']))

            <li class="navigation-header text-truncate"><span data-i18n="UI Elements">Accounting</span> </li>


            @if (Auth::user()->hasPermissionAny(['app.master_account.index','app.account_head.index']))
            <li class="{{ Request::is('new-chart-of-account') || Request::is('master-details/*') ? 'active' : ''}}">
                <a class="d-flex align-items-center" href="{{ route('new-chart-of-account') }}">
                    <i class="bx bx-right-arrow-alt"></i>
                    <span class="menu-item text-truncate" data-i18n="Master Account">Chart of Account</span>
                </a>
            </li>
            @endif
            @if (Auth::user()->hasPermission('app.cost_center.index'))
            <li class="nav-item {{ Request::is('cost-center-details') || Request::is('cost-center/edit/*') || Request::is('cost-center-details/*') ? 'active' : ''}}">
                <a href="{{ route('costCenterDetails') }}">
                    <i class="bx bx-right-arrow-alt"></i>
                    <span class="menu-title text-truncate" data-i18n="Cost Center">Cost Center</span>
                </a>
            </li>
            @endif
            
            @if (Auth::user()->hasPermission('app.profit_center.index'))
            <li class="nav-item {{ Request::is('profit-details') ||  Request::is('profit-center/edit/*') ? 'active' : ''}}">
                <a href="{{ route('profitCenterDetails') }}">
                    <i class="bx bx-right-arrow-alt"></i>
                    <span class="menu-title text-truncate" data-i18n="Profit Center">Profit Center</span>
                </a>
            </li>
            @endif
            @if (Auth::user()->hasPermission('app.party_info.index'))
            <li class="nav-item {{ Request::is('party-info') || Request::is('party-info/*')  ? 'active' : ''}}">
                <a href="{{ route('partyInfoDetails') }}">
                    <i class="bx bx-right-arrow-alt"></i>
                    <span class="menu-title text-truncate" data-i18n="Party Info">Party Info</span>
                </a>
            </li>
            @endif
            
            @if (Auth::user()->hasPermission('app.document'))
            <li class="nav-item {{ Request::is('document') || Request::is('document/*')  ? 'active' : ''}}">
                <a href="{{ route('document.index') }}">
                    <i class="bx bx-right-arrow-alt"></i>
                    <span class="menu-title text-truncate" data-i18n="Document">Document</span>
                </a>
            </li>
            @endif
            <li class="nav-item {{ Request::is('new-journal')  ? 'active' : ''}}">
                <a href="{{ route('new-journal') }}">
                    <i class="bx bx-right-arrow-alt"></i>
                    <span class="menu-title text-truncate" data-i18n="Document">Journal</span>
                </a>
            </li>
            <li class="nav-item {{ Request::is('new-general-ledger')  ? 'active' : ''}}">
                <a href="{{ route('new-general-ledger') }}">
                    <i class="bx bx-right-arrow-alt"></i>
                    <span class="menu-title text-truncate" data-i18n="Document">Accounts Report</span>
                </a>
            </li>
            <li class="nav-item {{ Request::is('new-receipt-voucher') || Request::is('receipt-voucher-list') ? 'active' : ''}}">
                <a href="{{ route('receipt-voucher-list') }}">
                    <i class="bx bx-right-arrow-alt"></i>
                    <span class="menu-title text-truncate" data-i18n="Document">Receipt Voucher</span>
                </a>
            </li>

            {{-- @if (Auth::user()->hasPermissionAny(['app.journal_entry','app.journal_authorize','app.journal_approval'])) --}}
            <li class=" nav-item"><a href="#"><i class="bx bx-user-plus"></i><span class="menu-title text-truncate" data-i18n="Journal">Journal</span></a>
                <ul class="menu-content">
                    {{-- @if(auth()->user()->hasPermission('app.journal_entry')) --}}
                    <li  class="{{ Request::is('journal-entry*') ? 'active' : ''}}">
                        <a class="d-flex align-items-center" href="{{ route('journalEntry') }}">
                            <i class="bx bx-right-arrow-alt"></i>
                            <span class="menu-item text-truncate" data-i18n="Entry">Entry</span>
                        </a>
                    </li>
                    {{-- @endif
                    @if(auth()->user()->hasPermission('app.journal_authorize')) --}}
                    <li class="{{ Request::is('journal-authorize*') ? 'active' : ''}}">
                        <a class="d-flex align-items-center" href="{{ route('journalAuthorize') }}">
                            <i class="bx bx-right-arrow-alt"></i>
                            <span class="menu-item text-truncate" data-i18n="Authorization">Authorization</span>
                        </a>
                    </li>
                    {{-- @endif
                    @if (auth()->user()->hasPermission('app.journal_approval')) --}}
                    <li class="{{ Request::is('journal-approval*') ? 'active' : ''}}">
                        <a class="d-flex align-items-center" href="{{ route('journalApproval') }}">
                            <i class="bx bx-right-arrow-alt"></i>
                            <span class="menu-item text-truncate" data-i18n="Authorization">Approval</span>
                        </a>
                    </li>
                    {{-- @endif --}}

                    <li class="{{ Request::is('journal-approved*') ? 'active' : ''}}">
                        <a class="d-flex align-items-center" href="{{ route('Journals') }}">
                            <i class="bx bx-right-arrow-alt"></i>
                            <span class="menu-item text-truncate" data-i18n="Authorization">Journals</span>
                        </a>
                    </li>
                </ul>
            </li>
            {{-- @endif --}}

            @if (Auth::user()->hasPermissionAny(['app.acreport.gl','app.acreport.tb','app.acreport.is', 'app.acreport.bs', 'app.acreport.cfs']))
            <li class=" nav-item"><a href="#"><i class="bx bx-user-plus"></i><span class="menu-title text-truncate" data-i18n="Accounts Report">Accounts Report</span></a>
                <ul class="menu-content">
                    @if (auth()->user()->hasPermission('app.acreport.gl'))
                    <li class="{{ Request::is('attendance/*') || Request::is('attendance') ? 'active' : ''}}">
                        <a class="d-flex align-items-center" href="{{ route('general-ledger') }}">
                            <i class="bx bx-right-arrow-alt"></i>
                            <span class="menu-item text-truncate" data-i18n="General Ledger">General Ledger</span>
                        </a>
                    </li>

                    <li class="{{ Request::is('attendance/*') || Request::is('attendance') ? 'active' : ''}}">
                        <a class="d-flex align-items-center" href="{{ route('partyLedger') }}">
                            <i class="bx bx-right-arrow-alt"></i>
                            <span class="menu-item text-truncate" data-i18n="General Ledger">Party Ledger</span>
                        </a>
                    </li>

                    @endif
                    @if (auth()->user()->hasPermission('app.acreport.tb'))
                    <li class="{{ Request::is('employee-attendance/*') || Request::is('employee-attendance') ? 'active' : ''}}">
                        <a class="d-flex align-items-center" href="{{ route('trial-balance') }}">
                            <i class="bx bx-right-arrow-alt"></i>
                            <span class="menu-item text-truncate" data-i18n="Trial Balance">Trial Balance</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('app.acreport.is'))
                    <li class="{{ Request::is('student-leave*') ? 'active' : ''}}">
                        <a class="d-flex align-items-center" href="{{ route('under-const') }}">
                            <i class="bx bx-right-arrow-alt"></i>
                            <span class="menu-item text-truncate" data-i18n="Income Statement / Profit Loss">Income Statement / Profit Loss</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('app.acreport.bs'))
                    <li class="{{ Request::is('student-leave*') ? 'active' : ''}}">
                        <a class="d-flex align-items-center" href="{{ route('under-const') }}">
                            <i class="bx bx-right-arrow-alt"></i>
                            <span class="menu-item text-truncate" data-i18n="Balance Sheet">Balance Sheet</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('app.acreport.cfs'))
                    <li class="{{ Request::is('student-leave*') ? 'active' : ''}}">
                        <a class="d-flex align-items-center" href="{{ route('under-const') }}">
                            <i class="bx bx-right-arrow-alt"></i>
                            <span class="menu-item text-truncate" data-i18n="Cash Flow Statement">Cash Flow Statement</span>
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermission('app.acreport.cfs'))
                    <li class="{{ Request::is('accounts-payable-ledger*') ? 'active' : ''}}">
                        <a class="d-flex align-items-center" href="{{ route('ac-payable-ledger') }}">
                            <i class="bx bx-right-arrow-alt"></i>
                            <span class="menu-item text-truncate" data-i18n="Accounts Payable Ledger">Accounts Payable Ledger</span>
                        </a>
                    </li>
                    @endif

                    @if (auth()->user()->hasPermission('app.acreport.cfs'))
                    <li class="{{ Request::is('accounts-receivable-ledger*') ? 'active' : ''}}">
                        <a class="d-flex align-items-center" href="{{ route('ac-receivable-ledger') }}">
                            <i class="bx bx-right-arrow-alt"></i>
                            <span class="menu-item text-truncate" data-i18n="Accounts Receivable Ledger">Accounts Receivable Ledger</span>
                        </a>
                    </li>
                    @endif
                </ul>
            </li>
            @endif

            @endif
            {{-- If Clause end - Accounting --}}

            @if (Auth::user()->hasPermissionAny(['app.style.index', 'app.color.index', 'app.size.index', 'app.item_list.index', 'app.stock.position', 'app.stock.reconciliation']))
            <li class=" navigation-header text-truncate"><span data-i18n="Inventory">Inventory</span> </li>

                @if (Auth::user()->hasPermissionAny(['app.style.index', 'app.color.index', 'app.size.index', 'app.item_list.index']))
                <li class=" nav-item"><a href="#"><i class="bx bx-user-plus"></i><span class="menu-title text-truncate" data-i18n="Product Specification">Product Specification</span></a>
                    <ul class="menu-content">
                        @if (auth()->user()->hasPermission('app.style.index')) 
                        <li class="{{ Request::is('style*') ? 'active' : ''}}"">
                            <a class="d-flex align-items-center" href="{{ route('style.index')}} ">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Style">Style</span>
                            </a>
                        </li>
                        @endif
                        @if (auth()->user()->hasPermission('app.color.index')) 
                        <li class="{{ Request::is('brand*') ? 'active' : ''}}">
                            <a class="d-flex align-items-center" href="{{route('brand.index')}}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Brand">Color</span>
                            </a>
                        </li>
                        @endif
                        @if (auth()->user()->hasPermission('app.size.index')) 
                        <li class="{{ Request::is('group*') ? 'active' : ''}}">
                            <a class="d-flex align-items-center" href="{{route('group.index')}}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Group">Size</span>
                            </a>
                        </li>
                        @endif
                        @if (auth()->user()->hasPermission('app.item_list.index')) 
                        <li  class="{{ Request::is('item-list*') ? 'active' : ''}}">
                            <a class="d-flex align-items-center" href="{{route('item-list.index')}}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Item List / Setup">Item List</span>
                            </a>
                        </li>
                        @endif
                    </ul>
                </li>
                @endif

                @if (Auth::user()->hasPermissionAny(['app.stock.position', 'app.stock.reconciliation']))
                <li class=" nav-item"><a href="#"><i class="bx bx-user-plus"></i><span class="menu-title text-truncate" data-i18n="Stock">Stock</span></a>
                    <ul class="menu-content">
                        @if (auth()->user()->hasPermission('app.stock.position'))
                       <li class="nav-item {{ Request::is('stock-position-details') ? 'active' : ''}}">
                            <a class="d-flex align-items-center" href="{{ route('stockPosition') }}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Stock Position">Stock Position Details</span>
                            </a>
                        </li>


                        <li class="nav-item {{ Request::is('stock-position-report') ? 'active' : ''}}">
                            <a class="d-flex align-items-center" href="{{ route('stockPosition2') }}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Stock Position">Stock Position</span>
                            </a>
                        </li>
                        @endif
                        @if (auth()->user()->hasPermission('app.stock.reconciliation'))
                        <li>
                            <a class="d-flex align-items-center" href="{{ route('under-const') }}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Reconciliation">Reconciliation</span>
                            </a>
                        </li>
                        @endif
                    </ul>
                </li>
                @endif
            
            @endif
            {{-- End of Inventory: If clause --}}

            @if (Auth::user()->hasPermissionAny(['app.daily_sales', 'app.monthly_sales','app.delivery_summery']))
            <li class=" navigation-header text-truncate"><span data-i18n="Report">Report</span> </li>
                @if (auth()->user()->hasPermission('app.daily_sales'))
                <li class="nav-item"><a href="#"><i class="bx bx-user-plus"></i><span class="menu-title text-truncate" data-i18n="Daily Sales">Daily Sales</span></a>
                    <ul class="menu-content">
                        <li class="{{ Request::is('daily-sale-report/*') || Request::is('daily-sale-report') || Request::is('received/*') ? 'active' : ''}}">
                            <a class="d-flex align-items-center" href="{{ route('dailySaleReport') }}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Product Wise">Product Wise</span>
                            </a>
                        </li>
                        <li class="{{ Request::is('invoice-wise-sale-summary*') || Request::is('invoice-wise-sales') ? 'active' : ''}}">
                            <a class="d-flex align-items-center" href="{{ route('InvoiceWiseSaleSummary') }}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Invoice Wise">Invoice Wise</span>
                            </a>
                        </li>                        
                    </ul>
                </li>
                @endif
                @if (auth()->user()->hasPermission('app.monthly_sales'))
                <li class=" nav-item"><a href="{{ route('monthly-sale-report') }}"><i class="bx bx-user-plus"></i><span class="menu-title text-truncate" data-i18n="Monthly Sales">Monthly Sales</span></a></li>
                @endif
                @if (auth()->user()->hasPermission('app.delivery_summery'))
                <li class=" nav-item"><a href="{{ route('under-const') }}"><i class="bx bx-user-plus"></i><span class="menu-title text-truncate" data-i18n="Delivery Summery">Delivery Summary</span></a></li>
                @endif
                {{-- @if (auth()->user()->hasPermission('app.monthly_sales')) --}}
                <li class=" nav-item"><a href="{{ route('businessSummery') }}"><i class="bx bx-user-plus"></i><span class="menu-title text-truncate" data-i18n="Business Summary Report">Business Summary Report</span></a></li>
                {{-- @endif --}}
            @endif
            {{-- end of Report --}}

            @if (Auth::user()->hasPermissionAny(['app.requisition_entry', 'app.po', 'app.gr', 'app.ip', 'app.purchase_return_entry', 'app.payment_voucher_entry', 'app.payment_voucher_entry', 'app.sales.so', 'app.sales.delivery_note', 'app.sales.warehouse_tax_invoice', 'app.sales.receipt_voucher', 'app.sales.sr','app.po_generation_entry', 'app.po_generation_approval']))
                
                <li class=" navigation-header text-truncate"><span data-i18n="Daily Operation">Daily Operation</span> </li>

                @if (Auth::user()->hasPermissionAny(['app.requisition_entry', 'app.po', 'app.gr', 'app.ip', 'app.purchase_return_entry', 'app.payment_voucher_entry', 'app.payment_voucher_entry','app.po_generation_entry', 'app.po_generation_approval']))

                <li class=" nav-item"><a href="#"><i class="bx bx-user-plus"></i><span class="menu-title text-truncate" data-i18n="Purchase">Purchase</span></a>
                    <ul class="menu-content">
                        <li class="{{ Request::is('purchase-requisition*') ? 'active' : ''}}">
                            <a class="d-flex align-items-center" href="{{route('purchase-requisition.index')}}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Purchase Requisition">Purchase Requisition</span>
                            </a>
                        </li>
                        <li class="{{ Request::is('item-purchase*') || Request::is("po-generation-approval-list") || Request::is("po-generation-approval-details") ? 'active' : ''}}">
                            <a class="d-flex align-items-center" href="{{route('item-purchase.index')}}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="PO Generation">PO Generation</span>
                            </a>
                        </li>
                        <li class="{{Request::is('gr-details*') || Request::is('goods-received*') ? 'active' : ''}}">
                            <a class="d-flex align-items-center" href="{{route("goods-received.index")}}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Goods Receive">Goods Receive</span>
                            </a>
                        </li>
                        <li class="{{Request::is('invoice-posting*') || Request::is('invoice_post_form') || Request::is('invoice-posting-submit') || Request::is('ip_details') ? 'active' : ''}}">
                            <a class="d-flex align-items-center" href="{{route("invoice_posting")}}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Invoice Posting">Invoice Posting</span>
                            </a>
                        </li>
                        <li class="{{ Request::is('purchase-return*') || Request::is('gr-details') ? 'active' : ''}}">
                            <a class="d-flex align-items-center" href="{{route('purchase-return.index')}}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Purchase Return">Purchase Return</span>
                            </a>
                        </li>
                        <li class="{{ Request::is('payment-voucher*') || Request::is('pv-process') ? 'active' : ''}}">
                            <a class="d-flex align-items-center" href="{{route("payment-voucher.index")}}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Payment Voucher">Payment Voucher</span>
                            </a>
                        </li>
                        <li class="{{ Request::is('purchase-summary*') || Request::is('purchase-summery*') ? 'active' : ''}}">
                            <a class="d-flex align-items-center" href="{{route("purchase-summary.index")}}">
                                <i class="bx bx-right-arrow-alt"></i>
                                <span class="menu-item text-truncate" data-i18n="Payment Voucher">Purchase Summary</span>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif
                {{-- end of Purchase --}}

                @if (Auth::user()->hasPermissionAny(['app.sales.so', 'app.sales.delivery_note', 'app.sales.warehouse_tax_invoice', 'app.sales.receipt_voucher', 'app.sales.sr']))

                <li class=" nav-item"><a href="#"><i class="bx bx-menu"></i><span class="menu-title text-truncate" data-i18n="Menu Levels">Sales & Delivery</span></a>
                    <ul class="menu-content">
                        @if (auth()->user()->hasPermission('app.payment_voucher_entry'))
                        <li><a class="d-flex align-items-center" href="#"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Counter Sale">Counter Sale</span></a>
                            <ul class="menu-content">
                                <li class="{{ Request::is('tax-invoice-issue') || Request::is('tax-invoice-view/*') || Request::is('tax-invoice-edit/*') || Request::is('tax-invoice-list*') ? 'active' : ''}}">
                                    <a class="d-flex align-items-center" href="{{ route('taxInvoIssue') }}">
                                        <i class="bx bx-right-arrow-alt"></i>
                                        <span class="menu-item text-truncate" data-i18n="Tax Invoice Issue">Tax Invoice Issue</span>
                                    </a>
                                </li>

                            </ul>
                        </li>
                        @endif

                        <li><a class="d-flex align-items-center" href="#"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Warehouse Sale">Warehouse Sale</span></a>
                            <ul class="menu-content">
                                {{-- <li class="{{ Request::is('stationery-item/*') || Request::is('stationery-item') ? 'active' : ''}}">
                                    <a class="d-flex align-items-center" href="#">
                                        <i class="bx bx-right-arrow-alt"></i>
                                        <span class="menu-item text-truncate" data-i18n="Quotation">Quotation</span>
                                    </a>
                                </li> --}}
                                @if (auth()->user()->hasPermission('app.sales.so'))
                                <li class="{{ Request::is('sale-order*') || Request::is('sale-order') ? 'active' : ''}}">
                                    <a class="d-flex align-items-center" href="{{ route('saleOrderReceive') }}">
                                        <i class="bx bx-right-arrow-alt"></i>
                                        <span class="menu-item text-truncate" data-i18n="SO Receive">SO Receive</span>
                                    </a>
                                </li>
                                @endif
                                @if (auth()->user()->hasPermission('app.sales.delivery_note'))
                                <li class="{{ Request::is('delivery-note*') || Request::is('delivery-note') ? 'active' : ''}}">
                                    <a class="d-flex align-items-center" href="{{ route('deliveryNote') }}">
                                        <i class="bx bx-right-arrow-alt"></i>
                                        <span class="menu-item text-truncate" data-i18n="Delivery Note">Delivery Note</span>
                                    </a>
                                </li>
                                @endif
                                @if (auth()->user()->hasPermission('app.sales.warehouse_tax_invoice'))
                                <li class="{{ Request::is('tax-invoice-issue/sales*') ? 'active' : ''}}">
                                    <a class="d-flex align-items-center" href="{{ route('salesTaxtInvoiceIssue') }}">
                                        <i class="bx bx-right-arrow-alt"></i>
                                        <span class="menu-item text-truncate" data-i18n="Tax Invoice Issue (Tax Invoice)">Tax Invoice Issue</span>
                                    </a>
                                </li>
                                @endif
                                @if (auth()->user()->hasPermission('app.sales.receipt_voucher'))
                                
                                <li class="{{ Request::is('receipt-voucher*') ? 'active' : ''}}">
                                    <a class="d-flex align-items-center" href="{{route("receipt-voucher.index")}}">
                                        <i class="bx bx-right-arrow-alt"></i>
                                        <span class="menu-item text-truncate" data-i18n="Receipt Voucher (Cash Reciept)">Receipt Voucher</span>
                                    </a>
                                </li>
                                @endif
                                @if (auth()->user()->hasPermission('app.sales.sr'))
                                <li class="{{ Request::is('sales-return/*') || Request::is('sales-return') ? 'active' : ''}}">
                                    <a class="d-flex align-items-center" href="{{ route('salesReturn') }}">
                                        <i class="bx bx-right-arrow-alt"></i>
                                        <span class="menu-item text-truncate" data-i18n="Sales Return">Sales Return</span>
                                    </a>
                                </li>
                                @endif
                            </ul>
                        </li>
                    </ul>
                </li>
                @endif
                {{-- end of Sales  --}}

            @endif
            {{-- end of Daily Operation --}}



            @if (Auth::user()->hasPermissionAny(['app.access_control.user', 'app.access_control.role', 'app.access_control.settings']))

                <li class=" navigation-header text-truncate"><span data-i18n="Support">Access Control </span> </li>
                @if (Auth::user()->hasPermission('app.access_control.user'))                        
                <li class=" nav-item {{ Request::is('user*') ? 'active' : ''}}">
                    <a class="d-flex align-items-center" href="{{ route('user.index')}}">
                        <i class="bx bx-right-arrow-alt"></i>
                        <span class="menu-item text-truncate" data-i18n="User Management">User Management</span>
                    </a>
                </li>
                @endif
                @if (Auth::user()->hasPermission('app.access_control.role'))
                <li class=" nav-item {{ Request::is('role*') ? 'active' : ''}}"><a href="{{route('role.index')}} "><i class="bx bx-user-plus"></i><span class="menu-title text-truncate" data-i18n="Roles">Roles</span></a></li>
                @endif
                @if (Auth::user()->hasPermission('app.access_control.settings'))
                <li class=" nav-item {{ Request::is('settings*') ? 'active' : ''}}"><a href="{{route('settings.index')}} "><i class="bx bx-user-plus"></i><span class="menu-title text-truncate" data-i18n="Roles">Settings</span></a></li>
                @endif

            @endif
            {{-- end of Access Control  --}}
                {{-- <li class=" nav-item"><a href="#"><i class="bx bx-user-plus"></i><span class="menu-title text-truncate" data-i18n="Users">Users</span></a></li> --}}

                <li class=" navigation-header text-truncate"><span data-i18n="Support">Logout</span> </li>

            <li class=" nav-item">
                <a href="{{ route('logout') }}" onclick="event.preventDefault();
                document.getElementById('logout-form').submit();"><i class="bx bx-log-out-circle"></i><span class="menu-title text-truncate" data-i18n="Logout">Logout</span></a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                    @csrf
                </form>
            </li>
        </ul>
    </div>
</div>
