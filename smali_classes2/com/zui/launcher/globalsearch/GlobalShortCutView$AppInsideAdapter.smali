.class public Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/GlobalShortCutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInsideAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/zui/launcher/GlobalSearchView;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->b:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->c:I

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public synthetic a(ILcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;Landroid/view/View;)V
    .locals 3

    iget-object p3, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p3, p3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    check-cast p3, Ljava/lang/String;

    new-instance v0, Lcom/zui/xlog/sdk/ParamMap;

    invoke-direct {v0}, Lcom/zui/xlog/sdk/ParamMap;-><init>()V

    const/4 v1, 0x1

    const-string v2, "GSInappClickContentName"

    invoke-virtual {v0, v1, v2, p3}, Lcom/zui/xlog/sdk/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const-string p3, "DirectSearch"

    const-string v1, "GSInappClick"

    const-string v2, "\u5e94\u7528\u5185\u529f\u80fd\u641c\u7d22\u7ed3\u679c"

    invoke-static {p3, v1, v2, v0}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/xlog/sdk/ParamMap;)I

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    if-eqz p0, :cond_0

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/GlobalSearchView;->itemClickMethod(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public addData()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->c:I

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->a:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->onBindViewHolder(Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;I)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v1, :cond_4

    iget-object v3, p1, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;->b:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Lcom/zui/launcher/GlobalSearchView;->highLightText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v3, p1, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;->c:Landroid/view/View;

    if-nez p2, :cond_6

    const/16 v1, 0x8

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/zui/launcher/globalsearch/p;

    invoke-direct {v1, p0, p2, p1}, Lcom/zui/launcher/globalsearch/p;-><init>(Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;ILcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;
    .locals 2

    new-instance p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0041

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public recyclerShortCutAdapter()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeData()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget v1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->c:I

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public setData(Ljava/util/List;Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;",
            "Lcom/zui/launcher/GlobalSearchView;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->b:Ljava/util/List;

    return-void
.end method
