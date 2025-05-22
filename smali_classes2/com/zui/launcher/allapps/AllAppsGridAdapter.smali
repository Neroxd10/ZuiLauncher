.class public Lcom/zui/launcher/allapps/AllAppsGridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;,
        Lcom/zui/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;,
        Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;,
        Lcom/zui/launcher/allapps/AllAppsGridAdapter$BindViewCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AppsGridAdapter"

.field public static final VIEW_TYPE_ACTIVE_ICON:I = 0x20

.field public static final VIEW_TYPE_ALL_APPS_DIVIDER:I = 0x10

.field public static final VIEW_TYPE_EMPTY_SEARCH:I = 0x4

.field public static final VIEW_TYPE_ICON:I = 0x2

.field public static final VIEW_TYPE_MASK_DIVIDER:I = 0x10

.field public static final VIEW_TYPE_MASK_ICON:I = 0x22

.field public static final VIEW_TYPE_SEARCH_MARKET:I = 0x8


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

.field private final d:Landroidx/recyclerview/widget/GridLayoutManager;

.field private final e:Lcom/zui/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;

.field private final f:I

.field private g:Lcom/zui/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

.field private h:Landroid/view/View$OnFocusChangeListener;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Intent;

.field private final k:I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/allapps/AlphabeticalAppsList;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->a:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->c:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    const p2, 0x7f12008a

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->i:Ljava/lang/String;

    new-instance p2, Lcom/zui/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-direct {p2, p0}, Lcom/zui/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;-><init>(Lcom/zui/launcher/allapps/AllAppsGridAdapter;)V

    iput-object p2, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->e:Lcom/zui/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;

    new-instance p2, Lcom/zui/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    invoke-direct {p2, p0, p1}, Lcom/zui/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;-><init>(Lcom/zui/launcher/allapps/AllAppsGridAdapter;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->d:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->e:Lcom/zui/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->b:Landroid/view/LayoutInflater;

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget p1, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numColumnsApps:I

    iput p1, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->f:I

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->d:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702de

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->k:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/allapps/AllAppsGridAdapter;)Lcom/zui/launcher/allapps/AlphabeticalAppsList;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->c:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/allapps/AllAppsGridAdapter;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->f:I

    return p0
.end method

.method public static isDividerViewType(I)Z
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result p0

    return p0
.end method

.method public static isIconViewType(I)Z
    .locals 1

    const/16 v0, 0x22

    invoke-static {p0, v0}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result p0

    return p0
.end method

.method public static isViewType(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public synthetic c(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->a:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->j:Landroid/content/Intent;

    sget-object v1, Lcom/zui/launcher/model/AppLaunchTracker;->CONTAINER_SEARCH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p0, v2, v1}, Lcom/zui/launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Z

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->c:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->c:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget p0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    return p0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->d:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->onBindViewHolder(Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;I)V
    .locals 5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->c:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object p2, p2, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/zui/launcher/AppInfo;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v0}, Lcom/zui/launcher/ActiveIconView;->reset()V

    invoke-virtual {v0, p2}, Lcom/zui/launcher/ActiveIconView;->applyFromApplicationInfo(Lcom/zui/launcher/AppInfo;)V

    goto :goto_1

    :cond_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->j:Landroid/content/Intent;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->c:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x11

    goto :goto_0

    :cond_4
    const v0, 0x800013

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->c:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object p2, p2, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/zui/launcher/AppInfo;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v0}, Lcom/zui/launcher/BubbleTextView;->reset()V

    iget v1, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->k:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->k:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, p2}, Lcom/zui/launcher/BubbleTextView;->applyFromApplicationInfo(Lcom/zui/launcher/AppInfo;)V

    :goto_1
    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->g:Lcom/zui/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

    if-eqz p0, :cond_6

    invoke-interface {p0, p1}, Lcom/zui/launcher/allapps/AllAppsGridAdapter$BindViewCallback;->onBindView(Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    :cond_6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;
    .locals 3

    const/4 v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    const/16 v0, 0x20

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d003c

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/ActiveIconView;

    sget-object p2, Lcom/zui/launcher/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p2, Lcom/zui/launcher/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v1}, Lcom/zui/launcher/ActiveIconView;->setLongPressTimeoutFactor(F)V

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->h:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->allAppsCellHeightPx:I

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected view type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p2, Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0030

    invoke-virtual {p0, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0037

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a033a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/zui/launcher/allapps/f;

    invoke-direct {v0, p0}, Lcom/zui/launcher/allapps/f;-><init>(Lcom/zui/launcher/allapps/AllAppsGridAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_3
    new-instance p2, Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0031

    invoke-virtual {p0, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_4
    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0035

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/BubbleTextView;

    sget-object p2, Lcom/zui/launcher/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p2, Lcom/zui/launcher/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v1}, Lcom/zui/launcher/BubbleTextView;->setLongPressTimeoutFactor(F)V

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->h:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/DeviceProfile;->allAppsCellHeightPx:I

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    check-cast p1, Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->onFailedToRecycleView(Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public onFailedToRecycleView(Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setBindViewCallback(Lcom/zui/launcher/allapps/AllAppsGridAdapter$BindViewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->g:Lcom/zui/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

    return-void
.end method

.method public setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->h:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setLastSearchQuery(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120608

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/zui/launcher/util/PackageManagerHelper;->getMarketSearchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->j:Landroid/content/Intent;

    return-void
.end method
