.class public Lcom/zui/launcher/globalsearch/AboutAppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/zui/launcher/GlobalSearchView;

.field private d:Lcom/zui/launcher/networksdk/OKHttpUtils;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->b:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/OKHttpUtils;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/networksdk/OKHttpUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->d:Lcom/zui/launcher/networksdk/OKHttpUtils;

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/AboutAppAdapter;)Lcom/zui/launcher/GlobalSearchView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->c:Lcom/zui/launcher/GlobalSearchView;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public aboutEventUp(Ljava/lang/String;)V
    .locals 2

    new-instance p0, Lcom/zui/xlog/sdk/ParamMap;

    invoke-direct {p0}, Lcom/zui/xlog/sdk/ParamMap;-><init>()V

    const/4 v0, 0x1

    const-string v1, "GSAboutAppClickContentName"

    invoke-virtual {p0, v0, v1, p1}, Lcom/zui/xlog/sdk/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const-string p1, "AboutApp"

    const-string v0, "GSAboutAppClick"

    const-string v1, "\u76f8\u5173\u5e94\u7528\u641c\u7d22\u7ed3\u679c"

    invoke-static {p1, v0, v1, p0}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/xlog/sdk/ParamMap;)I

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->b:Ljava/util/List;

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

    check-cast p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->onBindViewHolder(Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;I)V
    .locals 8

    if-ltz p2, :cond_e

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->e:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x41000000    # 8.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40a00000    # 5.0f

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    instance-of v2, v0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;

    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;->getAppname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;->getRpkIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v6, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->c:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v6, :cond_2

    iget-object v6, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->a:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v4, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->c:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->c:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->a:Landroid/content/Context;

    const v7, 0x7f0802e3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->b:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v5, :cond_5

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v4, Lcom/zui/launcher/globalsearch/AboutAppAdapter$a;

    invoke-direct {v4, p0, p1}, Lcom/zui/launcher/globalsearch/AboutAppAdapter$a;-><init>(Lcom/zui/launcher/globalsearch/AboutAppAdapter;Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;)V

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    :cond_4
    iget-object v4, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->b:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->getZuiThemedIconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_1
    instance-of v2, v0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    if-eqz v2, :cond_8

    move-object v2, v0

    check-cast v2, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;->getAppname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;->getIconaddr()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->c:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->a:Landroid/content/Context;

    const v7, 0x7f0802ce

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->c:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->a:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_7

    if-eqz v5, :cond_8

    iget-object v3, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->b:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v3, Lcom/zui/launcher/globalsearch/AboutAppAdapter$b;

    invoke-direct {v3, p0, p1, v2}, Lcom/zui/launcher/globalsearch/AboutAppAdapter$b;-><init>(Lcom/zui/launcher/globalsearch/AboutAppAdapter;Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;)V

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_2

    :cond_7
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->getZuiThemedIconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_2
    instance-of v1, v0, Lcom/zui/launcher/AppInfo;

    if-eqz v1, :cond_d

    iget-object v1, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    move-object v1, v0

    check-cast v1, Lcom/zui/launcher/AppInfo;

    iget-object v2, v1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->c:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->a:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v1, v1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_3

    :cond_b
    iget-object v1, v1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :goto_3
    if-eqz v1, :cond_c

    iget-object v2, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->b:Landroid/widget/ImageView;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_c
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/zui/launcher/globalsearch/AboutAppAdapter$c;

    invoke-direct {v2, p0, p1}, Lcom/zui/launcher/globalsearch/AboutAppAdapter$c;-><init>(Lcom/zui/launcher/globalsearch/AboutAppAdapter;Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_d
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->b(Landroid/view/View;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/zui/launcher/globalsearch/AboutAppAdapter$d;

    invoke-direct {v2, p0, p1, p2}, Lcom/zui/launcher/globalsearch/AboutAppAdapter$d;-><init>(Lcom/zui/launcher/globalsearch/AboutAppAdapter;Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_e
    :goto_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d001c

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;

    invoke-direct {p1, p0}, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public recycleAboutAppView()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->d:Lcom/zui/launcher/networksdk/OKHttpUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/OKHttpUtils;->recyclerOkHttp()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->c:Lcom/zui/launcher/GlobalSearchView;

    return-void
.end method

.method public setData(Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/zui/launcher/GlobalSearchView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->c:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p2}, Lcom/zui/launcher/GlobalSearchView;->getPreKeyWordString()Ljava/lang/String;

    return-void
.end method
