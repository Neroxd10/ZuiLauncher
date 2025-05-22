.class public final Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/recyclerview/ViewHolderBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/launcher/recyclerview/ViewHolderBinder<",
        "Lcom/zui/launcher/widget/model/WidgetsListContentEntry;",
        "Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Landroid/view/View$OnClickListener;

.field private final c:Landroid/view/View$OnLongClickListener;

.field private final d:Lcom/zui/launcher/widget/picker/b0;

.field private final e:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

.field private final f:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;Lcom/zui/launcher/widget/picker/b0;Lcom/zui/launcher/widget/picker/WidgetsListAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->g:Z

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->b:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->c:Landroid/view/View$OnLongClickListener;

    iput-object p4, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->e:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    iput-object p5, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->d:Lcom/zui/launcher/widget/picker/b0;

    iput-object p6, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->f:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    return-void
.end method

.method private a(Landroid/widget/TableLayout;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    const/16 v2, 0x8

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableRow;

    goto :goto_2

    :cond_1
    new-instance v4, Landroid/widget/TableRow;

    invoke-virtual {p1}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setGravity(I)V

    invoke-virtual {p1, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    :goto_2
    invoke-virtual {v4}, Landroid/widget/TableRow;->getChildCount()I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-le v5, v6, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_3
    invoke-virtual {v4}, Landroid/widget/TableRow;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v4, v3}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Landroid/widget/TableRow;->getChildCount()I

    move-result v5

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0d0193

    invoke-virtual {v6, v7, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/widget/WidgetCell;

    const v7, 0x7f0a0440

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v4, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public bridge synthetic bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;

    check-cast p2, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->bindViewHolder(Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;Lcom/zui/launcher/widget/model/WidgetsListContentEntry;I)V

    return-void
.end method

.method public bindViewHolder(Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;Lcom/zui/launcher/widget/model/WidgetsListContentEntry;I)V
    .locals 7

    iget-object p1, p1, Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;->mTableContainer:Lcom/zui/launcher/widget/picker/WidgetsListTableView;

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->f:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    sget-object p3, Lcom/zui/launcher/widget/picker/c0;->LAST:Lcom/zui/launcher/widget/picker/c0;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/zui/launcher/widget/picker/c0;->MIDDLE:Lcom/zui/launcher/widget/picker/c0;

    :goto_0
    invoke-virtual {p1, p3}, Lcom/zui/launcher/widget/picker/WidgetsListTableView;->setListDrawableState(Lcom/zui/launcher/widget/picker/c0;)V

    iget-object p3, p2, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    invoke-virtual {p2}, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;->getMaxSpanSizeInCells()I

    move-result p2

    invoke-static {p3, p2}, Lcom/zui/launcher/widget/util/WidgetsTableUtils;->groupWidgetItemsIntoTable(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->a(Landroid/widget/TableLayout;Ljava/util/List;)V

    const/4 p3, 0x0

    move v0, p3

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move v2, p3

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    invoke-virtual {v3, p3}, Landroid/widget/TableRow;->setVisibility(I)V

    invoke-virtual {v3, v2}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {v3}, Lcom/zui/launcher/widget/WidgetCell;->clear()V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/model/WidgetItem;

    iget v5, v4, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    iget v6, v4, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    invoke-virtual {v3, v5, v6}, Lcom/zui/launcher/widget/WidgetCell;->setPreviewSize(II)Landroid/util/Size;

    move-result-object v5

    iget-object v6, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->e:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    invoke-virtual {v3, v4, v6}, Lcom/zui/launcher/widget/WidgetCell;->applyFromCellItem(Lcom/zui/launcher/model/WidgetItem;Lcom/zui/launcher/widget/WidgetPreviewLoader;)V

    iget-boolean v6, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->g:Z

    invoke-virtual {v3, v6}, Lcom/zui/launcher/widget/WidgetCell;->setApplyBitmapDeferred(Z)V

    iget-object v6, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->e:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    invoke-virtual {v6, v4, v5}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->getPreview(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/zui/launcher/widget/WidgetCell;->ensurePreview()V

    goto :goto_3

    :cond_1
    invoke-virtual {v3, v4}, Lcom/zui/launcher/widget/WidgetCell;->applyPreview(Landroid/graphics/Bitmap;)V

    :goto_3
    invoke-virtual {v3, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public bridge synthetic newViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->newViewHolder(Landroid/view/ViewGroup;)Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public newViewHolder(Landroid/view/ViewGroup;)Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;
    .locals 4

    new-instance v0, Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f0d01ab

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;-><init>(Landroid/view/View;)V

    iget-object p1, v0, Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;->mTableContainer:Lcom/zui/launcher/widget/picker/WidgetsListTableView;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->d:Lcom/zui/launcher/widget/picker/b0;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/b0;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TableLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public setApplyBitmapDeferred(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->g:Z

    return-void
.end method

.method public bridge synthetic unbindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListTableViewHolderBinder;->unbindViewHolder(Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;)V

    return-void
.end method

.method public unbindViewHolder(Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;)V
    .locals 6

    iget-object p0, p1, Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;->mTableContainer:Lcom/zui/launcher/widget/picker/WidgetsListTableView;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    iget-object v2, p1, Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;->mTableContainer:Lcom/zui/launcher/widget/picker/WidgetsListTableView;

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    invoke-virtual {v2}, Landroid/widget/TableRow;->getChildCount()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_0

    invoke-virtual {v2, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {v5}, Lcom/zui/launcher/widget/WidgetCell;->clear()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
