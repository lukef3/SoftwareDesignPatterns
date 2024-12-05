namespace ToolSYS.Presentation.Nav;

public class NavForm : Form
{
    protected readonly INavigation Navigation;

    protected MenuStrip MenuStrip1 = new MenuStrip();
    protected ToolStripMenuItem RatesToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem SetToolCategoryToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem UpdateToolRateToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem ToolsToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem AddToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem UpdateToolsToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem RemoveToolsToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem ViewToolsToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem CustomersToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem AddCustomerToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem UpdateCustomerToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem ViewCustomersToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem RentalsToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem RentToolToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem ReturnToolsToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem ViewRentalsToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem AdminReportsToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem AnalysisToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem MainMenuToolStripMenuItem = new ToolStripMenuItem();
    protected ToolStripMenuItem ExitSystemToolStripMenuItem = new ToolStripMenuItem();

    public NavForm(INavigation navigation)
    {
        Navigation = navigation;
        InitializeComponent();
    }
    public NavForm() : this(new NoOpNavigation())
    {
    }
    private void InitializeComponent()
    {
        MenuStrip1 = new MenuStrip();
        RatesToolStripMenuItem = new ToolStripMenuItem();
        SetToolCategoryToolStripMenuItem = new ToolStripMenuItem();
        UpdateToolRateToolStripMenuItem = new ToolStripMenuItem();
        ToolsToolStripMenuItem = new ToolStripMenuItem();
        AddToolStripMenuItem = new ToolStripMenuItem();
        UpdateToolsToolStripMenuItem = new ToolStripMenuItem();
        RemoveToolsToolStripMenuItem = new ToolStripMenuItem();
        ViewToolsToolStripMenuItem = new ToolStripMenuItem();
        CustomersToolStripMenuItem = new ToolStripMenuItem();
        AddCustomerToolStripMenuItem = new ToolStripMenuItem();
        UpdateCustomerToolStripMenuItem = new ToolStripMenuItem();
        ViewCustomersToolStripMenuItem = new ToolStripMenuItem();
        RentalsToolStripMenuItem = new ToolStripMenuItem();
        RentToolToolStripMenuItem = new ToolStripMenuItem();
        ReturnToolsToolStripMenuItem = new ToolStripMenuItem();
        ViewRentalsToolStripMenuItem = new ToolStripMenuItem();
        AdminReportsToolStripMenuItem = new ToolStripMenuItem();
        AnalysisToolStripMenuItem = new ToolStripMenuItem();
        MainMenuToolStripMenuItem = new ToolStripMenuItem();
        ExitSystemToolStripMenuItem = new ToolStripMenuItem();
        MenuStrip1.SuspendLayout();
        SuspendLayout();
        // 
        // menuStrip1
        // 
        MenuStrip1.BackColor = SystemColors.AppWorkspace;
        MenuStrip1.Font = new Font("Lucida Console", 9F, FontStyle.Regular, GraphicsUnit.Point, 0);
        MenuStrip1.ImageScalingSize = new Size(24, 24);
        MenuStrip1.Items.AddRange([RatesToolStripMenuItem, ToolsToolStripMenuItem, CustomersToolStripMenuItem, RentalsToolStripMenuItem, AdminReportsToolStripMenuItem, MainMenuToolStripMenuItem, ExitSystemToolStripMenuItem
        ]);
        MenuStrip1.Location = new Point(0, 0);
        MenuStrip1.Name = "MenuStrip1";
        MenuStrip1.Size = new Size(1062, 24);
        MenuStrip1.TabIndex = 6;
        MenuStrip1.Text = @"menuStrip1";
        // 
        // ratesToolStripMenuItem
        // 
        RatesToolStripMenuItem.DropDownItems.AddRange([SetToolCategoryToolStripMenuItem, UpdateToolRateToolStripMenuItem
        ]);
        RatesToolStripMenuItem.Name = "RatesToolStripMenuItem";
        RatesToolStripMenuItem.Size = new Size(52, 20);
        RatesToolStripMenuItem.Text = @"Rates";
        // 
        // setToolCategoryToolStripMenuItem
        // 
        SetToolCategoryToolStripMenuItem.Name = "SetToolCategoryToolStripMenuItem";
        SetToolCategoryToolStripMenuItem.Size = new Size(189, 22);
        SetToolCategoryToolStripMenuItem.Text = @"Set Tool Category";
        SetToolCategoryToolStripMenuItem.Click += SetToolCategoryToolStripMenuItem_Click;
        // 
        // updateToolRateToolStripMenuItem
        // 
        UpdateToolRateToolStripMenuItem.Name = "UpdateToolRateToolStripMenuItem";
        UpdateToolRateToolStripMenuItem.Size = new Size(189, 22);
        UpdateToolRateToolStripMenuItem.Text = @"Update Tool Rate";
        UpdateToolRateToolStripMenuItem.Click += UpdateToolRateToolStripMenuItem_Click;
        // 
        // toolsToolStripMenuItem
        // 
        ToolsToolStripMenuItem.DropDownItems.AddRange([AddToolStripMenuItem, UpdateToolsToolStripMenuItem, RemoveToolsToolStripMenuItem, ViewToolsToolStripMenuItem
        ]);
        ToolsToolStripMenuItem.Name = "ToolsToolStripMenuItem";
        ToolsToolStripMenuItem.Size = new Size(52, 20);
        ToolsToolStripMenuItem.Text = @"Tools";
        // 
        // addToolStripMenuItem
        // 
        AddToolStripMenuItem.Name = "AddToolStripMenuItem";
        AddToolStripMenuItem.Size = new Size(154, 22);
        AddToolStripMenuItem.Text = @"Add Tools";
        AddToolStripMenuItem.Click += AddToolStripMenuItem_Click;
        // 
        // updateToolsToolStripMenuItem
        // 
        UpdateToolsToolStripMenuItem.Name = "UpdateToolsToolStripMenuItem";
        UpdateToolsToolStripMenuItem.Size = new Size(154, 22);
        UpdateToolsToolStripMenuItem.Text = @"Update Tools";
        UpdateToolsToolStripMenuItem.Click += UpdateToolsToolStripMenuItem_Click;
        // 
        // removeToolsToolStripMenuItem
        // 
        RemoveToolsToolStripMenuItem.Name = "RemoveToolsToolStripMenuItem";
        RemoveToolsToolStripMenuItem.Size = new Size(154, 22);
        RemoveToolsToolStripMenuItem.Text = @"Remove Tools";
        RemoveToolsToolStripMenuItem.Click += RemoveToolsToolStripMenuItem_Click;
        // 
        // viewToolsToolStripMenuItem
        // 
        ViewToolsToolStripMenuItem.Name = "ViewToolsToolStripMenuItem";
        ViewToolsToolStripMenuItem.Size = new Size(154, 22);
        ViewToolsToolStripMenuItem.Text = @"View Tools";
        ViewToolsToolStripMenuItem.Click += ViewToolsToolStripMenuItem_Click;
        // 
        // customersToolStripMenuItem
        // 
        CustomersToolStripMenuItem.DropDownItems.AddRange([AddCustomerToolStripMenuItem, UpdateCustomerToolStripMenuItem, ViewCustomersToolStripMenuItem
        ]);
        CustomersToolStripMenuItem.Name = "CustomersToolStripMenuItem";
        CustomersToolStripMenuItem.Size = new Size(80, 20);
        CustomersToolStripMenuItem.Text = @"Customers";
        // 
        // addCustomerToolStripMenuItem
        // 
        AddCustomerToolStripMenuItem.Name = "AddCustomerToolStripMenuItem";
        AddCustomerToolStripMenuItem.Size = new Size(175, 22);
        AddCustomerToolStripMenuItem.Text = @"Add Customer";
        AddCustomerToolStripMenuItem.Click += AddCustomerToolStripMenuItem_Click;
        // 
        // updateCustomerToolStripMenuItem
        // 
        UpdateCustomerToolStripMenuItem.Name = "UpdateCustomerToolStripMenuItem";
        UpdateCustomerToolStripMenuItem.Size = new Size(175, 22);
        UpdateCustomerToolStripMenuItem.Text = @"Update Customer";
        UpdateCustomerToolStripMenuItem.Click += UpdateCustomerToolStripMenuItem_Click;
        // 
        // viewCustomersToolStripMenuItem
        // 
        ViewCustomersToolStripMenuItem.Name = "ViewCustomersToolStripMenuItem";
        ViewCustomersToolStripMenuItem.Size = new Size(175, 22);
        ViewCustomersToolStripMenuItem.Text = @"View Customers";
        ViewCustomersToolStripMenuItem.Click += viewCustomersToolStripMenuItem_Click;
        // 
        // rentalsToolStripMenuItem
        // 
        RentalsToolStripMenuItem.DropDownItems.AddRange([RentToolToolStripMenuItem, ReturnToolsToolStripMenuItem, ViewRentalsToolStripMenuItem]);
        RentalsToolStripMenuItem.Name = "RentalsToolStripMenuItem";
        RentalsToolStripMenuItem.Size = new Size(66, 20);
        RentalsToolStripMenuItem.Text = @"Rentals";
        // 
        // rentToolToolStripMenuItem
        // 
        RentToolToolStripMenuItem.Name = "RentToolToolStripMenuItem";
        RentToolToolStripMenuItem.Size = new Size(154, 22);
        RentToolToolStripMenuItem.Text = @"Rent Tools";
        RentToolToolStripMenuItem.Click += RentToolToolStripMenuItem_Click;
        // 
        // returnToolsToolStripMenuItem
        // 
        ReturnToolsToolStripMenuItem.Name = "ReturnToolsToolStripMenuItem";
        ReturnToolsToolStripMenuItem.Size = new Size(154, 22);
        ReturnToolsToolStripMenuItem.Text = @"Return Tools";
        ReturnToolsToolStripMenuItem.Click += ReturnToolsToolStripMenuItem_Click;
        // 
        // viewRentalsToolStripMenuItem
        // 
        ViewRentalsToolStripMenuItem.Name = "ViewRentalsToolStripMenuItem";
        ViewRentalsToolStripMenuItem.Size = new Size(154, 22);
        ViewRentalsToolStripMenuItem.Text = @"View Rentals";
        ViewRentalsToolStripMenuItem.Click += ViewRentalsToolStripMenuItem_Click;
        // 
        // adminReportsToolStripMenuItem
        // 
        AdminReportsToolStripMenuItem.DropDownItems.AddRange([AnalysisToolStripMenuItem]);
        AdminReportsToolStripMenuItem.Name = "AdminReportsToolStripMenuItem";
        AdminReportsToolStripMenuItem.Size = new Size(108, 20);
        AdminReportsToolStripMenuItem.Text = @"Admin Reports";
        // 
        // analysisToolStripMenuItem
        // 
        AnalysisToolStripMenuItem.Name = "AnalysisToolStripMenuItem";
        AnalysisToolStripMenuItem.Size = new Size(231, 22);
        AnalysisToolStripMenuItem.Text = @"Annual Reports";
        AnalysisToolStripMenuItem.Click += AnalysisToolStripMenuItem_Click;
        // 
        // mainMenuToolStripMenuItem
        // 
        MainMenuToolStripMenuItem.Alignment = ToolStripItemAlignment.Right;
        MainMenuToolStripMenuItem.Name = "MainMenuToolStripMenuItem";
        MainMenuToolStripMenuItem.Size = new Size(80, 20);
        MainMenuToolStripMenuItem.Text = @"Main Menu";
        MainMenuToolStripMenuItem.Click += MainMenuToolStripMenuItem_Click;
        // 
        // exitSystemToolStripMenuItem
        // 
        ExitSystemToolStripMenuItem.Alignment = ToolStripItemAlignment.Right;
        ExitSystemToolStripMenuItem.Name = "ExitSystemToolStripMenuItem";
        ExitSystemToolStripMenuItem.Size = new Size(94, 20);
        ExitSystemToolStripMenuItem.Text = @"Exit System";
        ExitSystemToolStripMenuItem.Click += ExitSystemToolStripMenuItem_Click;
        // 
        // NavForm
        // 
        ClientSize = new Size(1062, 261);
        Controls.Add(MenuStrip1);
        MainMenuStrip = MenuStrip1;
        Name = "NavForm";
        MenuStrip1.ResumeLayout(false);
        MenuStrip1.PerformLayout();
        ResumeLayout(false);
        PerformLayout();
    }

    private void SetToolCategoryToolStripMenuItem_Click(object? sender, EventArgs e)
    {
        Navigation.NavigateToSetToolCategory(this);
    }

    private void UpdateToolRateToolStripMenuItem_Click(object? sender, EventArgs e)
    {
        Navigation.NavigateToUpdateRate(this);
    }

    private void AddToolStripMenuItem_Click(object? sender, EventArgs e)
    {
        Navigation.NavigateToAddTool(this);
    }

    private void UpdateToolsToolStripMenuItem_Click(object? sender, EventArgs e)
    {
        Navigation.NavigateToUpdateTool(this);
    }

    private void RemoveToolsToolStripMenuItem_Click(object? sender, EventArgs e)
    {
        Navigation.NavigateToRemoveTool(this);
    }

    private void ViewToolsToolStripMenuItem_Click(object? sender, EventArgs e)
    {
        Navigation.NavigateToViewTools(this);
    }

    private void AddCustomerToolStripMenuItem_Click(object? sender, EventArgs e)
    {
        Navigation.NavigateToAddCustomer(this);
    }

    private void UpdateCustomerToolStripMenuItem_Click(object? sender, EventArgs e)
    {
        Navigation.NavigateToUpdateCustomer(this);
    }

    private void viewCustomersToolStripMenuItem_Click(object? sender, EventArgs e)
    {
        Navigation.NavigateToViewCustomers(this);
    }

    private void RentToolToolStripMenuItem_Click(object? sender, EventArgs e)
    {
        Navigation.NavigateToRentTools(this);
    }

    private void ReturnToolsToolStripMenuItem_Click(object? sender, EventArgs e)
    {
        Navigation.NavigateToReturnTools(this);
    }

    private void ViewRentalsToolStripMenuItem_Click(object? sender, EventArgs e)
    {
        Navigation.NavigateToViewRentals(this);
    }

    private void AnalysisToolStripMenuItem_Click(object? sender, EventArgs e)
    {
        Navigation.NavigateToAnalysis(this);
    }

    private void MainMenuToolStripMenuItem_Click(object? sender, EventArgs e)
    {
        Navigation.NavigateToMainMenu(this);
    }

    private void ExitSystemToolStripMenuItem_Click(object? sender, EventArgs e)
    {
        var confirmExit = MessageBox.Show(@"Are you sure you want to exit?", @"Confirm Exit", MessageBoxButtons.YesNo);

        if (confirmExit == DialogResult.Yes)
        {
            Application.Exit();
        }
    }


    private class NoOpNavigation : INavigation
    {
        public void NavigateToSetToolCategory(Form form) { }
        public void NavigateToUpdateRate(Form form) { }
        public void NavigateToAddTool(Form form) { }
        public void NavigateToUpdateTool(Form form) { }
        public void NavigateToRemoveTool(Form form) { }
        public void NavigateToViewTools(Form form) { }
        public void NavigateToAddCustomer(Form form) { }
        public void NavigateToUpdateCustomer(Form form) { }
        public void NavigateToViewCustomers(Form form) { }
        public void NavigateToRentTools(Form form) { }
        public void NavigateToReturnTools(Form form) { }
        public void NavigateToViewRentals(Form form) { }
        public void NavigateToAnalysis(Form form) { }
        public void NavigateToMainMenu(Form form) { }
    }
}