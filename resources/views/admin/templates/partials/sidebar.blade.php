<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Brand Logo -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex align-items-center justify-content-center">
            <div class="info">
                <a href="" class="sidebar-brand-text mx-3">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>S</b>IM</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Pus</b>taka</span></a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-header">MAIN MENU</li>
                <li class="nav-item has-treeview">
                    <a href="{{ route('admin.dashboard') }}" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>
                <li class="nav-item has-treeview">
                    <a href="{{ route('admin.author.index') }}" class="nav-link">
                        <i class="nav-icon fa fa-user"></i>
                        <p>
                            Author
                        </p>
                    </a>
                </li>
                <li class="nav-item has-treeview">
                    <a href="{{ route('admin.book.index') }}" class="nav-link">
                        <i class="nav-icon fa fa-book"></i>
                        <p>
                            Book
                        </p>
                    </a>
                </li>
                <li class="nav-item has-treeview">
                    <a href="{{ route('admin.borrow.index') }}" class="nav-link">
                        <i class="nav-icon fa fa-book"></i>
                        <p>
                            Buku sedang di pinjam
                        </p>
                    </a>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-chart-pie"></i>
                        <p>
                            Laporan
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item has-treeview">
                            <a href="{{ route('admin.report.top-book') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>
                                    Top Collection
                                </p>
                            </a>
                        </li>
                        <li class="nav-item has-treeview">
                            <a href="{{ route('admin.report.top-user') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>
                                    Top User
                                </p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fa fa-users"></i>
                        <p>
                            Users
                        </p>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>