.class public Lcom/zui/launcher/widget/picker/common/CommonAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/zui/launcher/widget/picker/common/ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

.field private d:Z

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZLcom/zui/launcher/widget/CachingWidgetPreviewLoader;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;Z",
            "Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnLongClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->d:Z

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->c:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    iput-boolean p3, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->d:Z

    iput-object p5, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->e:Landroid/view/View$OnClickListener;

    iput-object p6, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->f:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/widget/WidgetCell;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->performClick()Z

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/widget/WidgetCell;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public synthetic a(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/BaseActivity;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;Lcom/zui/launcher/widget/WidgetCell;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->c:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    invoke-virtual {v0, p1, p2}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->isPreviewLoaded(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->c:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->loadPreview(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)Landroid/os/CancellationSignal;

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lcom/zui/launcher/widget/WidgetCell;->getWidgetView()Lcom/zui/launcher/widget/WidgetImageView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/launcher/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->c:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->getPreview(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/zui/launcher/widget/WidgetCell;->applyPreview(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/zui/launcher/widget/picker/common/ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->onBindViewHolder(Lcom/zui/launcher/widget/picker/common/ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zui/launcher/widget/picker/common/ViewHolder;I)V
    .locals 9
    .param p1    # Lcom/zui/launcher/widget/picker/common/ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v7, p1, Lcom/zui/launcher/widget/picker/common/ViewHolder;->mCell:Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {v7}, Lcom/zui/launcher/widget/WidgetCell;->clear()V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/zui/launcher/widget/WidgetCell;->setIsAddWidget(Z)V

    iget-object v1, p1, Lcom/zui/launcher/widget/picker/common/ViewHolder;->mPreview:Lcom/zui/launcher/widget/WidgetImageView;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/widget/WidgetImageView;->setIsAddWidget(Z)V

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/zui/launcher/widget/WidgetCell;->setAnimatePreview(Z)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v3, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->b:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/model/WidgetItem;

    iget-object v3, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->a:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p2, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p2, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const v0, 0x7f120737

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p2, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    const-string v3, "\\u00d7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p2, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p2, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    :goto_1
    iput-object v0, v1, Lcom/zui/launcher/widget/WidgetImageView;->label:Ljava/lang/String;

    const/high16 v0, 0x42d80000    # 108.0f

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    iget-object v2, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/zui/launcher/widget/WidgetCell;->setRealPreviewSize(II)Landroid/util/Size;

    move-result-object v3

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->c:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    invoke-virtual {v7, p2, v0}, Lcom/zui/launcher/widget/WidgetCell;->applyFromCellItem(Lcom/zui/launcher/model/WidgetItem;Lcom/zui/launcher/widget/WidgetPreviewLoader;)V

    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->d:Z

    invoke-virtual {v7, v0}, Lcom/zui/launcher/widget/WidgetCell;->setApplyBitmapDeferred(Z)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->c:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    invoke-virtual {v0, p2, v3}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->getPreview(Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/zui/launcher/model/WidgetItem;->hasPreviewLayout()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/zui/launcher/widget/picker/common/a;

    invoke-direct {v5, v7}, Lcom/zui/launcher/widget/picker/common/a;-><init>(Lcom/zui/launcher/widget/WidgetCell;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v4

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->c:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    invoke-virtual {v0, v4, p2, v3, v5}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->loadPreview(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)Landroid/os/CancellationSignal;

    new-instance v8, Lcom/zui/launcher/widget/picker/common/d;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/widget/picker/common/d;-><init>(Lcom/zui/launcher/widget/picker/common/CommonAdapter;Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/BaseActivity;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;Lcom/zui/launcher/widget/WidgetCell;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v7, v8, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Lcom/zui/launcher/widget/WidgetCell;->ensurePreview()V

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v0}, Lcom/zui/launcher/widget/WidgetCell;->applyPreview(Landroid/graphics/Bitmap;)V

    :goto_2
    iget-object v0, p1, Lcom/zui/launcher/widget/picker/common/ViewHolder;->mWidgetName:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->f:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p0, p1, Lcom/zui/launcher/widget/picker/common/ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/zui/launcher/widget/picker/common/b;

    invoke-direct {p2, v7}, Lcom/zui/launcher/widget/picker/common/b;-><init>(Lcom/zui/launcher/widget/WidgetCell;)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/zui/launcher/widget/picker/common/ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    new-instance p1, Lcom/zui/launcher/widget/picker/common/c;

    invoke-direct {p1, v7}, Lcom/zui/launcher/widget/picker/common/c;-><init>(Lcom/zui/launcher/widget/WidgetCell;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/widget/picker/common/ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/widget/picker/common/ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->a:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d0192

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/zui/launcher/widget/picker/common/ViewHolder;

    invoke-direct {p1, p0}, Lcom/zui/launcher/widget/picker/common/ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    return-object p1
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/zui/launcher/widget/picker/common/ViewHolder;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->onViewRecycled(Lcom/zui/launcher/widget/picker/common/ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/zui/launcher/widget/picker/common/ViewHolder;)V
    .locals 0
    .param p1    # Lcom/zui/launcher/widget/picker/common/ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, p1, Lcom/zui/launcher/widget/picker/common/ViewHolder;->mCell:Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/WidgetCell;->clear()V

    return-void
.end method
