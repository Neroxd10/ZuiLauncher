.class public Lcom/zui/launcher/allapps/FloatingHeaderView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/zui/launcher/Insettable;
.implements Lcom/android/systemui/plugins/AllAppsRow$OnHeightUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/AllAppsRow;",
        ">;",
        "Lcom/zui/launcher/Insettable;",
        "Lcom/android/systemui/plugins/AllAppsRow$OnHeightUpdatedListener;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/animation/ValueAnimator;

.field private final c:Landroid/graphics/Point;

.field private final d:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private final e:I

.field private f:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

.field private g:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

.field private h:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

.field private i:Landroid/view/ViewGroup;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Z

.field protected mMaxTranslation:I

.field protected final mPluginRows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/plugins/AllAppsRow;",
            "Lcom/zui/launcher/allapps/PluginHeaderRow;",
            ">;"
        }
    .end annotation
.end field

.field protected mTabLayout:Landroid/view/ViewGroup;

.field protected mTabsHidden:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

.field private r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/allapps/FloatingHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-direct {p2, v0, v0, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->a:Landroid/graphics/Rect;

    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->b:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->c:Landroid/graphics/Point;

    new-instance p2, Lcom/zui/launcher/allapps/FloatingHeaderView$a;

    invoke-direct {p2, p0}, Lcom/zui/launcher/allapps/FloatingHeaderView$a;-><init>(Lcom/zui/launcher/allapps/FloatingHeaderView;)V

    iput-object p2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->d:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->o:Z

    iput-boolean v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->p:Z

    sget-object p2, Lcom/zui/launcher/allapps/FloatingHeaderRow;->NO_ROWS:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    iput-object p2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->q:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    iput-object p2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->e:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/zui/launcher/allapps/FloatingHeaderView;)Lcom/zui/launcher/allapps/AllAppsRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->h:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/allapps/FloatingHeaderView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->b:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/allapps/FloatingHeaderView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/allapps/FloatingHeaderView;->f(I)V

    return-void
.end method

.method private d(Landroid/graphics/Point;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->h:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->h:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->i:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private e(I)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mMaxTranslation:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private f(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->k:I

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/allapps/FloatingHeaderView;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->k:I

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->j:Z

    :cond_1
    :goto_0
    iput p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->l:I

    goto :goto_2

    :cond_2
    if-nez v0, :cond_4

    iget v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->k:I

    sub-int v0, p1, v0

    iget v2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mMaxTranslation:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->l:I

    if-ltz v0, :cond_3

    iput v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->l:I

    sub-int/2addr p1, v2

    :goto_1
    iput p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->k:I

    goto :goto_2

    :cond_3
    neg-int p1, v2

    if-gt v0, p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->j:Z

    neg-int p1, v2

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->q:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    iput-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->q:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/zui/launcher/allapps/FloatingHeaderRow;

    iput-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    iget-object v3, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->q:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/allapps/PluginHeaderRow;

    iget-object v3, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private h(Lcom/zui/launcher/allapps/AllAppsRecyclerView;Lcom/zui/launcher/allapps/AllAppsRecyclerView;)Lcom/zui/launcher/allapps/AllAppsRecyclerView;
    .locals 0

    if-eq p1, p2, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->d:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-object p2
.end method

.method private i()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mMaxTranslation:I

    iget-boolean v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->p:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget v4, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mMaxTranslation:I

    invoke-interface {v3}, Lcom/zui/launcher/allapps/FloatingHeaderRow;->getExpectedHeight()I

    move-result v3

    add-int/2addr v4, v3

    iput v4, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mMaxTranslation:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected allowTouchForwarding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->m:Z

    return-void
.end method

.method protected applyVerticalMove()V
    .locals 6

    iget v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->l:I

    iget v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mMaxTranslation:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->l:I

    iget-boolean v2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->p:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget v2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->e:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-interface {v5, v0, v3}, Lcom/zui/launcher/allapps/FloatingHeaderRow;->setVerticalScroll(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    array-length v1, v0

    move v2, v3

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Lcom/zui/launcher/allapps/FloatingHeaderRow;->setVerticalScroll(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->l:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->a:Landroid/graphics/Rect;

    iget v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mMaxTranslation:I

    iget v2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->l:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->f:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->g:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method

.method public findFixedRowByType(Ljava/lang/Class;)Lcom/zui/launcher/allapps/FloatingHeaderRow;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/zui/launcher/allapps/FloatingHeaderRow;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/zui/launcher/allapps/FloatingHeaderRow;->getTypeClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxTranslation()I
    .locals 2

    iget v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mMaxTranslation:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mTabsHidden:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_1

    const v0, 0x7f0700b6

    goto :goto_1

    :cond_1
    const v0, 0x7f0700b4

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_2
    iget v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mMaxTranslation:I

    if-lez v0, :cond_3

    iget-boolean v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mTabsHidden:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p0

    add-int/2addr v0, p0

    return v0

    :cond_3
    iget p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mMaxTranslation:I

    return p0
.end method

.method public getMaxTranslationWhenQuery()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_1

    const v0, 0x7f0700b7

    goto :goto_1

    :cond_1
    const v0, 0x7f0700b5

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasVisibleContent()Z
    .locals 4

    iget-object p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/zui/launcher/allapps/FloatingHeaderRow;->hasVisibleContent()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->j:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->l:I

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->applyVerticalMove()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    sget-object v0, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;

    const-class v1, Lcom/android/systemui/plugins/AllAppsRow;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    sget-object v0, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a039e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/zui/launcher/allapps/FloatingHeaderRow;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/zui/launcher/allapps/FloatingHeaderRow;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/zui/launcher/allapps/FloatingHeaderRow;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/launcher/allapps/FloatingHeaderRow;

    iput-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->q:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    iput-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    return-void
.end method

.method public onHeightUpdated()V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mMaxTranslation:I

    invoke-direct {p0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->i()V

    iget v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mMaxTranslation:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->setupHeader()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->n:Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->c:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->d(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->c:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->h:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->n:Z

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->c:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->n:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/AllAppsRow;Landroid/content/Context;)V
    .locals 2

    new-instance p2, Lcom/zui/launcher/allapps/PluginHeaderRow;

    invoke-direct {p2, p1, p0}, Lcom/zui/launcher/allapps/PluginHeaderRow;-><init>(Lcom/android/systemui/plugins/AllAppsRow;Lcom/zui/launcher/allapps/FloatingHeaderView;)V

    iget-object v0, p2, Lcom/zui/launcher/allapps/PluginHeaderRow;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->g()V

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/AllAppsRow;->setOnHeightUpdatedListener(Lcom/android/systemui/plugins/AllAppsRow$OnHeightUpdatedListener;)V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/AllAppsRow;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/allapps/FloatingHeaderView;->onPluginConnected(Lcom/android/systemui/plugins/AllAppsRow;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/AllAppsRow;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/allapps/PluginHeaderRow;

    iget-object v0, v0, Lcom/zui/launcher/allapps/PluginHeaderRow;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->g()V

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->onHeightUpdated()V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/AllAppsRow;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/FloatingHeaderView;->onPluginDisconnected(Lcom/android/systemui/plugins/AllAppsRow;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->c:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->d(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->c:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->h:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->c:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v1, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->c:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v1, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reset(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->b:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->l:I

    aput v2, v1, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->l:I

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->applyVerticalMove()V

    :goto_0
    iput-boolean v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->j:Z

    iget p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mMaxTranslation:I

    neg-int p1, p1

    iput p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->k:I

    iget-object p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->h:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->scrollToTop()V

    return-void
.end method

.method public setCollapsed(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->p:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->p:Z

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->onHeightUpdated()V

    return-void
.end method

.method public setContentVisibility(ZZLcom/zui/launcher/anim/PropertySetter;Landroid/view/animation/Interpolator;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/zui/launcher/allapps/FloatingHeaderRow;->setContentVisibility(ZZLcom/zui/launcher/anim/PropertySetter;Landroid/view/animation/Interpolator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/zui/launcher/allapps/FloatingHeaderView;->allowTouchForwarding(Z)V

    iget-object p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    sget-object p1, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p3, p0, p1, p2, p4}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v3, p1, v0}, Lcom/zui/launcher/allapps/FloatingHeaderRow;->setInsets(Landroid/graphics/Rect;Lcom/zui/launcher/DeviceProfile;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMainActive(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->f:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->g:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    :goto_0
    iput-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->h:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->o:Z

    return-void
.end method

.method public setup([Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;Z)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->r:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    invoke-interface {v4, p0, v5, p2}, Lcom/zui/launcher/allapps/FloatingHeaderRow;->setup(Lcom/zui/launcher/allapps/FloatingHeaderView;[Lcom/zui/launcher/allapps/FloatingHeaderRow;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->i()V

    iput-boolean p2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mTabsHidden:Z

    iget-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->f:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-direct {p0, p2, v0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->h(Lcom/zui/launcher/allapps/AllAppsRecyclerView;Lcom/zui/launcher/allapps/AllAppsRecyclerView;)Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iput-object v0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->f:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->g:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/allapps/FloatingHeaderView;->h(Lcom/zui/launcher/allapps/AllAppsRecyclerView;Lcom/zui/launcher/allapps/AllAppsRecyclerView;)Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iput-object p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->g:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iget-object p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->f:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->i:Landroid/view/ViewGroup;

    iget-boolean p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->o:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView;->g:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->setMainActive(Z)V

    invoke-virtual {p0, v2}, Lcom/zui/launcher/allapps/FloatingHeaderView;->reset(Z)V

    return-void
.end method
