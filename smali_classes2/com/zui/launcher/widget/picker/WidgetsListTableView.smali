.class public Lcom/zui/launcher/widget/picker/WidgetsListTableView;
.super Landroid/widget/TableLayout;
.source ""


# instance fields
.field private a:Lcom/zui/launcher/widget/picker/c0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableView;->a:Lcom/zui/launcher/widget/picker/c0;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TableLayout;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, v0, Lcom/zui/launcher/widget/picker/c0;->a:[I

    array-length v0, v0

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/TableLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableView;->a:Lcom/zui/launcher/widget/picker/c0;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/c0;->a:[I

    invoke-static {p1, p0}, Landroid/widget/TableLayout;->mergeDrawableStates([I[I)[I

    return-object p1
.end method

.method public setListDrawableState(Lcom/zui/launcher/widget/picker/c0;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableView;->a:Lcom/zui/launcher/widget/picker/c0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableView;->a:Lcom/zui/launcher/widget/picker/c0;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->refreshDrawableState()V

    return-void
.end method
