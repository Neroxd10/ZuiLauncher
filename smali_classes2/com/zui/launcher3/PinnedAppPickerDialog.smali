.class public Lcom/zui/launcher3/PinnedAppPickerDialog;
.super Landroidx/fragment/app/DialogFragment;
.source ""


# instance fields
.field private a:Lcom/zui/launcher3/AppListAdapter;

.field private b:Lcom/zui/launcher3/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/zui/launcher3/AppListAdapter;Lcom/zui/launcher3/j;)Lcom/zui/launcher3/PinnedAppPickerDialog;
    .locals 1

    new-instance v0, Lcom/zui/launcher3/PinnedAppPickerDialog;

    invoke-direct {v0}, Lcom/zui/launcher3/PinnedAppPickerDialog;-><init>()V

    iput-object p0, v0, Lcom/zui/launcher3/PinnedAppPickerDialog;->a:Lcom/zui/launcher3/AppListAdapter;

    iput-object p1, v0, Lcom/zui/launcher3/PinnedAppPickerDialog;->b:Lcom/zui/launcher3/j;

    return-object v0
.end method


# virtual methods
.method public synthetic a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher3/PinnedAppPickerDialog;->a:Lcom/zui/launcher3/AppListAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher3/AppEntry;

    iget-object p2, p0, Lcom/zui/launcher3/PinnedAppPickerDialog;->b:Lcom/zui/launcher3/j;

    invoke-interface {p2, p1}, Lcom/zui/launcher3/j;->onAppPicked(Lcom/zui/launcher3/AppEntry;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    sget p0, Lcom/zui/launcher3/R$layout;->app_picker_dialog:I

    invoke-virtual {p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/zui/launcher3/R$id;->picker_app_grid:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iget-object p2, p0, Lcom/zui/launcher3/PinnedAppPickerDialog;->a:Lcom/zui/launcher3/AppListAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p2, Lcom/zui/launcher3/b;

    invoke-direct {p2, p0}, Lcom/zui/launcher3/b;-><init>(Lcom/zui/launcher3/PinnedAppPickerDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
