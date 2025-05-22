.class public Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/BaseDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/zui/launcher/GlobalSearchView;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    iput p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->b:I

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->a:Landroid/content/Context;

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    return-void
.end method


# virtual methods
.method public synthetic a(ILcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->recommendAppEvent(I)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    if-eqz p0, :cond_0

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/GlobalSearchView;->appLongClick(Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public addData(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->b:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->b:I

    const/4 v4, 0x0

    if-le v1, v3, :cond_2

    if-lt v2, v3, :cond_1

    invoke-interface {p1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    iget v5, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->b:I

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    :cond_1
    iget v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->b:I

    if-ge v2, v3, :cond_2

    add-int v3, v2, v1

    if-lt v3, v0, :cond_2

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    sub-int v5, v0, v2

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    :cond_2
    iget v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->b:I

    if-ge v1, v3, :cond_3

    add-int v3, v2, v1

    if-lt v3, v0, :cond_3

    sub-int/2addr v0, v2

    invoke-interface {p1, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public synthetic b(ILcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->recommendAppEvent(I)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    if-eqz p0, :cond_0

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/GlobalSearchView;->itemClickMethod(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

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

    check-cast p1, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->onBindViewHolder(Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;I)V
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/BaseDataModel;

    instance-of v1, v0, Lcom/zui/launcher/AppInfo;

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/zui/launcher/AppInfo;

    iget-object v6, v1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    check-cast v6, Ljava/lang/String;

    iget-object v1, v1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-nez v1, :cond_2

    move-object v1, v5

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    iget-object v7, p1, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;->downArrow:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v8, v5

    move-object v5, v1

    move-object v1, v8

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;->downArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v1, v0

    check-cast v1, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    move v4, v2

    goto :goto_1

    :cond_5
    const-string v6, ""

    move-object v1, v5

    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;->suggestionText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v5, :cond_7

    iget-object v3, p1, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;->suggestionImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getIconAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    new-instance v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v4}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v4, v2}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v3, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$a;

    invoke-direct {v3, p0, p1, v1}, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$a;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_8
    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;->suggestionImg:Landroid/widget/ImageView;

    const v2, 0x3f666666    # 0.9f

    goto :goto_2

    :cond_9
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;->suggestionImg:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/zui/launcher/globalsearch/n;

    invoke-direct {v2, p0, p2, p1}, Lcom/zui/launcher/globalsearch/n;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;ILcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/zui/launcher/globalsearch/o;

    invoke-direct {v2, p0, p2, p1}, Lcom/zui/launcher/globalsearch/o;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;ILcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0172

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;

    invoke-direct {p1, p0}, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    return-object p1
.end method

.method public recommendAppEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/globalsearch/BaseDataModel;

    instance-of p1, p0, Lcom/zui/launcher/AppInfo;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/zui/launcher/AppInfo;

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    check-cast p0, Ljava/lang/String;

    new-instance p1, Lcom/zui/xlog/sdk/ParamMap;

    invoke-direct {p1}, Lcom/zui/xlog/sdk/ParamMap;-><init>()V

    const/4 v0, 0x1

    const-string v1, "GSRAppsClickContentName "

    invoke-virtual {p1, v0, v1, p0}, Lcom/zui/xlog/sdk/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const-string p0, "RecommendApps"

    const-string v0, "GSRAppsClick"

    const-string v1, "\u63a8\u8350\u5e94\u7528\u641c\u7d22\u7ed3\u679c"

    invoke-static {p0, v0, v1, p1}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/xlog/sdk/ParamMap;)I

    :cond_0
    return-void
.end method

.method public recycleSuggesView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setSuggestionAppData(Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/BaseDataModel;",
            ">;",
            "Lcom/zui/launcher/GlobalSearchView;",
            "Z)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/zui/launcher/Utilities;->isGamePhone()Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->b:I

    mul-int/lit8 p2, p2, 0x2

    iget-object p3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, p2, :cond_1

    iget v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->b:I

    if-lt v0, v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    iget v2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->b:I

    invoke-interface {v1, v2, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    :cond_0
    iget v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->b:I

    if-ge v0, v1, :cond_2

    add-int/2addr p3, v0

    if-lt p3, p2, :cond_2

    :goto_0
    iget-object p3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    invoke-interface {p3, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    goto :goto_1

    :cond_1
    add-int/2addr p3, v0

    if-lt p3, p2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method
