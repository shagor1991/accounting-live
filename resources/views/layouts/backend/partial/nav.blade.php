<nav class="header-navbar main-header-navbar navbar-expand-lg navbar navbar-with-menu fixed-top ">
    <div class="navbar-wrapper">
        <div class="navbar-container content">
            <div class="navbar-collapse" id="navbar-mobile">
                <div class="mr-auto float-left bookmark-wrapper d-flex align-items-center">
                    <ul class="nav navbar-nav">
                        <li class="nav-item mobile-menu d-xl-none mr-auto"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="javascript:void(0);"><i class="ficon bx bx-menu"></i></a></li>
                    </ul>

                </div>
                <ul class="nav navbar-nav float-right">

                    <li class="dropdown dropdown-notification nav-item"><a class="nav-link nav-link-label" href="javascript:void(0);" data-toggle="dropdown"><i class="ficon bx bx-bell bx-tada bx-flip-horizontal"></i><span class="badge badge-pill badge-danger badge-up">
                        {{-- {{ auth()->user()->hasPermission('app.journal.approve')?
                        (auth()->user()->hasPermission('app.journal.authorize')?
                        (auth()->user()->hasPermission('app.journal.create')?
                        (App\Journal::where('state',"Approval")->where('checked', false)->count()+App\Journal::where('state',"Authorization")->where('checked', false)->count()+App\Journal::where('state',"Entry")->where('checked', false)->count()):
                        (App\Journal::where('state',"Approval")->where('checked', false)->count()+App\Journal::where('state',"Authorization")->where('checked', false)->count()):
                        (App\Journal::where('state',"Approval")->where('checked', false)->count() )) ):
                        (auth()->user()->hasPermission('app.journal.authorize')?
                        (auth()->user()->hasPermission('app.journal.create')?
                        (App\Journal::where('state',"Authorization")->where('checked', false)->count()+App\Journal::where('state',"Entry")->where('checked', false)->count()):
                        (App\Journal::where('state',"Authorization")->where('checked', false)->count())):
                        (auth()->user()->hasPermission('app.journal.create'))? App\Journal::where('state',"Entry")->where('checked', false)->count():0
                        ) }} --}}

                        @if (auth()->user()->hasPermission('app.journal.approve'))
                             @if(auth()->user()->hasPermission('app.journal.authorize'))
                                @if(auth()->user()->hasPermission('app.journal.create'))
                                {{ App\Journal::where('state',"Approval")->where('checked', false)->count()+App\Journal::where('state',"Authorization")->where('checked', false)->count()+App\Journal::where('state',"Entry")->where('checked', false)->count() }}
                                @else
                                {{ App\Journal::where('state',"Approval")->where('checked', false)->count()+App\Journal::where('state',"Authorization")->where('checked', false)->count() }}
                                @endif
                            @elseif(auth()->user()->hasPermission('app.journal.create'))
                                {{ App\Journal::where('state',"Approval")->where('checked', false)->count()+App\Journal::where('state',"Entry")->where('checked', false)->count() }}
                            @else
                            {{ App\Journal::where('state',"Approval")->where('checked', false)->count()}}
                            @endif
                        @elseif (auth()->user()->hasPermission('app.journal.authorize'))
                            @if(auth()->user()->hasPermission('app.journal.create'))
                            {{ App\Journal::where('state',"Authorization")->where('checked', false)->count()+App\Journal::where('state',"Entry")->where('checked', false)->count() }}
                            @else
                            {{ App\Journal::where('state',"Authorization")->where('checked', false)->count()}}
                            @endif
                        @elseif(auth()->user()->hasPermission('app.journal.create'))
                            {{ App\Journal::where('state',"Entry")->where('checked', false)->count() }}
                        @endif


                    </span></a>
                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                                @if (auth()->user()->hasPermission('app.journal.approve'))
                                <div class="dropdown-divider"></div>
                                <a href="{{ route('journalApproval') }}" class="dropdown-item">
                                 <strong style="color: red">{{ App\Journal::where('state',"Approval")->where('checked', false)->count() }}</strong>&nbsp;  Pending Journal for Approval
                                </a>
                                @endif
                                @if(auth()->user()->hasPermission('app.journal.authorize'))
                                <div class="dropdown-divider"></div>
                                <a href="{{ route('journalAuthorize') }}" class="dropdown-item">
                                    <strong style="color: red"> {{ App\Journal::where('state',"Authorization")->where('checked', false)->count() }} </strong>&nbsp; Pending Journal for Authorization
                                </a>
                                @endif
                                @if(auth()->user()->hasPermission('app.journal.create'))
                                <div class="dropdown-divider"></div>
                                <a href="{{ route('journalEntry') }}" class="dropdown-item">
                                    <strong style="color: red"> {{ App\Journal::where('state',"Entry")->where('checked', false)->count() }} </strong>&nbsp; Pending journal Feedback
                                </a>
                                @endif
                    </li>
                    <li class="dropdown dropdown-user nav-item"><a class="dropdown-toggle nav-link dropdown-user-link" href="javascript:void(0);" data-toggle="dropdown">
                            <div class="user-nav d-sm-flex d-none"><span class="user-name">{{ Auth::user()->name}}</span><span class="user-status text-muted">Available</span></div><span><img class="round" src="{{ asset('assets/backend')}}/app-assets/user.png" alt="avatar" height="40" width="40"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right pb-0">
                            <a class="dropdown-item" href="#"><i class="bx bx-user mr-50"></i> Edit Profile</a>
                            {{-- <a class="dropdown-item" href="app-email.html"><i class="bx bx-envelope mr-50"></i> My Inbox</a>
                            <a class="dropdown-item" href="app-todo.html"><i class="bx bx-check-square mr-50"></i> Task</a>
                            <a class="dropdown-item" href="app-chat.html"><i class="bx bx-message mr-50"></i> Chats</a>  --}}
                            <div class="dropdown-divider mb-0"></div>
                            <a class="dropdown-item" onclick="event.preventDefault();
                            document.getElementById('logout-form-n').submit();" href="#"><i class="bx bx-power-off mr-50"></i> Logout</a>
                            <form id="logout-form-n" action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>
