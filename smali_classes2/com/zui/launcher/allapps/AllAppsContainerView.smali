.class public Lcom/zui/launcher/allapps/AllAppsContainerView;
.super Lcom/zui/launcher/views/SpringRelativeLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/DragSource;
.implements Lcom/zui/launcher/Insettable;
.implements Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;
    }
.end annotation


# instance fields
.field private final h:Lcom/zui/launcher/Launcher;

.field final i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

.field private final j:Lcom/zui/launcher/util/ItemInfoMatcher;

.field private final k:Lcom/zui/launcher/util/ItemInfoMatcher;

.field private final l:Lcom/zui/launcher/allapps/AllAppsStore;

.field private final m:Landroid/graphics/Paint;

.field private n:I

.field private o:I

.field p:Lcom/zui/launcher/allapps/SearchUiManager;

.field private q:Landroid/view/View;

.field private r:Lcom/zui/launcher/allapps/AllAppsPagedView;

.field private s:Lcom/zui/launcher/allapps/FloatingHeaderView;

.field private t:Landroid/text/SpannableStringBuilder;

.field u:Z

.field private v:Z

.field w:Lcom/zui/launcher/views/RecyclerViewFastScroller;

.field private final x:Landroid/graphics/Point;

.field private final y:Lcom/zui/launcher/util/MultiValueAlpha;

.field private final z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/views/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Lcom/zui/launcher/util/ItemInfoMatcher;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->j:Lcom/zui/launcher/util/ItemInfoMatcher;

    invoke-static {p2}, Lcom/zui/launcher/util/ItemInfoMatcher;->not(Lcom/zui/launcher/util/ItemInfoMatcher;)Lcom/zui/launcher/util/ItemInfoMatcher;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->k:Lcom/zui/launcher/util/ItemInfoMatcher;

    new-instance p2, Lcom/zui/launcher/allapps/AllAppsStore;

    invoke-direct {p2}, Lcom/zui/launcher/allapps/AllAppsStore;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->l:Lcom/zui/launcher/allapps/AllAppsStore;

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->n:I

    iput p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->o:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->t:Landroid/text/SpannableStringBuilder;

    iput-boolean p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->v:Z

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->x:Landroid/graphics/Point;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->z:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3, p0}, Lcom/zui/launcher/BaseActivity;->addOnDeviceProfileChangeListener(Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->t:Landroid/text/SpannableStringBuilder;

    invoke-static {p3, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 p3, 0x2

    new-array v0, p3, [Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    new-instance v1, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    invoke-direct {v1, p0, p2}, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;-><init>(Lcom/zui/launcher/allapps/AllAppsContainerView;Z)V

    aput-object v1, v0, p2

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    new-instance v0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;-><init>(Lcom/zui/launcher/allapps/AllAppsContainerView;Z)V

    aput-object v0, p2, v1

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->m:Landroid/graphics/Paint;

    const v0, 0x7f04002d

    invoke-static {p1, v0}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->l:Lcom/zui/launcher/allapps/AllAppsStore;

    new-instance p2, Lcom/zui/launcher/allapps/c;

    invoke-direct {p2, p0}, Lcom/zui/launcher/allapps/c;-><init>(Lcom/zui/launcher/allapps/AllAppsContainerView;)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    const p1, 0x7f0a007b

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/SpringRelativeLayout;->addSpringView(I)V

    const p1, 0x7f0a009a

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/SpringRelativeLayout;->addSpringView(I)V

    const p1, 0x7f0a007c

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/SpringRelativeLayout;->addSpringView(I)V

    new-instance p1, Lcom/zui/launcher/util/MultiValueAlpha;

    invoke-direct {p1, p0, p3}, Lcom/zui/launcher/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->y:Lcom/zui/launcher/util/MultiValueAlpha;

    return-void
.end method

.method static synthetic h(Lcom/zui/launcher/allapps/AllAppsContainerView;FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/views/SpringRelativeLayout;->finishWithShiftAndVelocity(FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    return-void
.end method

.method static synthetic i(Lcom/zui/launcher/allapps/AllAppsContainerView;)Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->h:Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method static synthetic j(Lcom/zui/launcher/allapps/AllAppsContainerView;)Lcom/zui/launcher/allapps/AllAppsStore;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->l:Lcom/zui/launcher/allapps/AllAppsStore;

    return-object p0
.end method

.method private l(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lcom/zui/launcher/allapps/AllAppsContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->r()V

    return-void
.end method

.method private r()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isAllAppsTabEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->l:Lcom/zui/launcher/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/zui/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/AppInfo;

    iget-object v3, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->k:Lcom/zui/launcher/util/ItemInfoMatcher;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/zui/launcher/util/ItemInfoMatcher;->matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->s(Z)V

    :cond_2
    return-void
.end method

.method private s(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->t(ZZ)V

    return-void
.end method

.method private t(ZZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->u:Z

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->u(Z)V

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->u:Z

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->l:Lcom/zui/launcher/allapps/AllAppsStore;

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    iget-object p2, p2, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->l:Lcom/zui/launcher/allapps/AllAppsStore;

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v1, 0x1

    aget-object p2, p2, v1

    iget-object p2, p2, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    iget-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->u:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    aget-object p1, p1, v0

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->r:Lcom/zui/launcher/allapps/AllAppsPagedView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->j:Lcom/zui/launcher/util/ItemInfoMatcher;

    invoke-virtual {p1, p2, v2}, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->b(Landroid/view/View;Lcom/zui/launcher/util/ItemInfoMatcher;)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    aget-object p1, p1, v1

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->r:Lcom/zui/launcher/allapps/AllAppsPagedView;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->k:Lcom/zui/launcher/util/ItemInfoMatcher;

    invoke-virtual {p1, p2, v2}, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->b(Landroid/view/View;Lcom/zui/launcher/util/ItemInfoMatcher;)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->r:Lcom/zui/launcher/allapps/AllAppsPagedView;

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->onTabChanged(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    aget-object p1, p1, v0

    const p2, 0x7f0a009a

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->b(Landroid/view/View;Lcom/zui/launcher/util/ItemInfoMatcher;)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    aget-object p1, p1, v1

    iput-object v2, p1, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->setupHeader()V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->l:Lcom/zui/launcher/allapps/AllAppsStore;

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    aget-object p2, p2, v0

    iget-object p2, p2, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->l:Lcom/zui/launcher/allapps/AllAppsStore;

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    aget-object p0, p0, v1

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private u(Z)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getRecyclerViewContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    if-eqz p1, :cond_2

    const v1, 0x7f0d0038

    goto :goto_1

    :cond_2
    const v1, 0x7f0d0036

    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    if-eqz p1, :cond_3

    check-cast v0, Lcom/zui/launcher/allapps/AllAppsPagedView;

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->r:Lcom/zui/launcher/allapps/AllAppsPagedView;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/PagedView;->initParentViews(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->r:Lcom/zui/launcher/allapps/AllAppsPagedView;

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->setContainerView(Lcom/zui/launcher/allapps/AllAppsContainerView;)V

    goto :goto_2

    :cond_3
    iput-object v4, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->r:Lcom/zui/launcher/allapps/AllAppsPagedView;

    :goto_2
    return-void
.end method


# virtual methods
.method public addElevationController(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->u:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public addSpringFromFlingUpdateListener(Landroid/animation/ValueAnimator;F)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/allapps/AllAppsContainerView$a;

    invoke-direct {v0, p0, p2}, Lcom/zui/launcher/allapps/AllAppsContainerView$a;-><init>(Lcom/zui/launcher/allapps/AllAppsContainerView;F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->n:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->o:I

    if-lez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->o:I

    int-to-float v0, v0

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->o:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move v5, v0

    move v6, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->n:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move v6, v0

    move v5, v1

    :goto_1
    move v7, v2

    move v8, v3

    iget-object v9, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->m:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->p:Lcom/zui/launcher/allapps/SearchUiManager;

    invoke-interface {v0, p1}, Lcom/zui/launcher/allapps/SearchUiManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getApps()Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    iput p0, p4, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    return-void
.end method

.method public getActiveRecyclerView()Lcom/zui/launcher/allapps/AllAppsRecyclerView;
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->r:Lcom/zui/launcher/allapps/AllAppsPagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    return-object p0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_0
.end method

.method public getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->y:Lcom/zui/launcher/util/MultiValueAlpha;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/MultiValueAlpha;->getProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    return-object p0
.end method

.method public getApps()Lcom/zui/launcher/allapps/AlphabeticalAppsList;
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->b:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    return-object p0
.end method

.method public getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->l:Lcom/zui/launcher/allapps/AllAppsStore;

    return-object p0
.end method

.method public getCanvasClipTopForOverscroll()I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getSearchView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->s:Lcom/zui/launcher/allapps/FloatingHeaderView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->r:Lcom/zui/launcher/allapps/AllAppsPagedView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->r:Lcom/zui/launcher/allapps/AllAppsPagedView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120086

    goto :goto_0

    :cond_0
    const v0, 0x7f120087

    goto :goto_0

    :cond_1
    const v0, 0x7f120085

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result p0

    float-to-int p0, p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public getFloatingHeaderView()Lcom/zui/launcher/allapps/FloatingHeaderView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->s:Lcom/zui/launcher/allapps/FloatingHeaderView;

    return-object p0
.end method

.method public getRecyclerViewContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->r:Lcom/zui/launcher/allapps/AllAppsPagedView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0a009a

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getScrollBar()Lcom/zui/launcher/views/RecyclerViewFastScroller;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/zui/launcher/views/RecyclerViewFastScroller;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSearchUiManager()Lcom/zui/launcher/allapps/SearchUiManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->p:Lcom/zui/launcher/allapps/SearchUiManager;

    return-object p0
.end method

.method public getSearchView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->q:Landroid/view/View;

    return-object p0
.end method

.method public hasSearchContent()Z
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->q:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const v1, 0x7f0a0336

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/ExtendedEditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isHeaderVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->s:Lcom/zui/launcher/allapps/FloatingHeaderView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPersonalTabVisible()Z
    .locals 1

    const v0, 0x7f0a039c

    invoke-direct {p0, v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->l(I)Z

    move-result p0

    return p0
.end method

.method public isWorkTabVisible()Z
    .locals 1

    const v0, 0x7f0a039d

    invoke-direct {p0, v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->l(I)Z

    move-result p0

    return p0
.end method

.method k()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->u:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a039e

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->highlightWorkTabIfNecessary()V

    :cond_0
    return-void
.end method

.method public synthetic n(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public synthetic o(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->r:Lcom/zui/launcher/allapps/AllAppsPagedView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    return-void
.end method

.method public onClearSearchResult()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->s(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->v:Z

    :cond_0
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/zui/launcher/DeviceProfile;)V
    .locals 5

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    iget-object v2, v1, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    iget-object v2, v1, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    iget-object v2, v1, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v2}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->resetAppsList()V

    iget-object v1, v1, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->resetMaxScrollY()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/zui/launcher/DropTarget$DragObject;Z)V
    .locals 0

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->h:Lcom/zui/launcher/Launcher;

    sget-object p3, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p1, p3}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/zui/launcher/DropTarget$DragObject;->deleteView:Lcom/zui/launcher/dragndrop/DragDeleteView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->h:Lcom/zui/launcher/Launcher;

    iget-object p1, p2, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object p2, p2, Lcom/zui/launcher/DropTarget$DragObject;->orginalView:Landroid/view/View;

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->showForIcon(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Lcom/zui/launcher/dragndrop/DeleteFloatingView;

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    new-instance v0, Lcom/zui/launcher/allapps/a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/allapps/a;-><init>(Lcom/zui/launcher/allapps/AllAppsContainerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a007b

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/allapps/FloatingHeaderView;

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->s:Lcom/zui/launcher/allapps/FloatingHeaderView;

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->u:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->t(ZZ)V

    const v0, 0x7f0a032e

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->q:Landroid/view/View;

    check-cast v0, Lcom/zui/launcher/allapps/SearchUiManager;

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->p:Lcom/zui/launcher/allapps/SearchUiManager;

    invoke-interface {v0, p0}, Lcom/zui/launcher/allapps/SearchUiManager;->initialize(Lcom/zui/launcher/allapps/AllAppsContainerView;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->h:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/zui/launcher/views/RecyclerViewFastScroller;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->x:Landroid/graphics/Point;

    invoke-virtual {v2, v3, v4, v5}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/zui/launcher/views/RecyclerViewFastScroller;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->w:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->w:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->x:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public onScrollUpEnd()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->k()V

    return-void
.end method

.method public onSearchResultsChanged()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->onSearchResultsChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTabChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->s:Lcom/zui/launcher/allapps/FloatingHeaderView;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/zui/launcher/allapps/FloatingHeaderView;->setMainActive(Z)V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->reset(Z)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v1, v0, p1

    iget-object v1, v1, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    if-eqz v1, :cond_1

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseRecyclerView;->bindFastScrollbar()V

    const p1, 0x7f0a039c

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/allapps/b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/allapps/b;-><init>(Lcom/zui/launcher/allapps/AllAppsContainerView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a039d

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/allapps/d;

    invoke-direct {v0, p0}, Lcom/zui/launcher/allapps/d;-><init>(Lcom/zui/launcher/allapps/AllAppsContainerView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->w:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->x:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic p(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->r:Lcom/zui/launcher/allapps/AllAppsPagedView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->h:Lcom/zui/launcher/Launcher;

    new-instance v1, Lcom/zui/launcher/allapps/e;

    invoke-direct {v1, p0}, Lcom/zui/launcher/allapps/e;-><init>(Lcom/zui/launcher/allapps/AllAppsContainerView;)V

    const-string v2, "TAPL_GET_SCROLL"

    invoke-static {v0, v2, p1, p2, v1}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->processTestRequest(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public synthetic q(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result p0

    const-string v0, "scrollY"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public reset(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->scrollToTop()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->isHeaderVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->s:Lcom/zui/launcher/allapps/FloatingHeaderView;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/allapps/FloatingHeaderView;->reset(Z)V

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->p:Lcom/zui/launcher/allapps/SearchUiManager;

    invoke-interface {p0}, Lcom/zui/launcher/allapps/SearchUiManager;->resetSearch()V

    return-void
.end method

.method protected saveMaxScrollY(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->saveMaxScrollY(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setDampedScrollShift(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getSearchView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    neg-float v1, v0

    invoke-static {p1, v1, v0}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p1

    invoke-super {p0, p1}, Lcom/zui/launcher/views/SpringRelativeLayout;->setDampedScrollShift(F)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v1, v0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008b

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008a

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->n:I

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/zui/launcher/DeviceProfile;->getAppViewsInsetsWithMarginH()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->z:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iput v7, v5, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iput v7, v5, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->z:Landroid/graphics/Rect;

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v3

    iput v7, v5, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    :goto_1
    iput v4, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->o:I

    iget-object v4, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->z:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v5, v6, v4, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_2

    :cond_2
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0, v6, v6, v6, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iput v6, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->o:I

    move v3, v6

    :goto_2
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->hasSearchContent()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->s:Lcom/zui/launcher/allapps/FloatingHeaderView;

    invoke-virtual {v2}, Lcom/zui/launcher/allapps/FloatingHeaderView;->getMaxTranslationWhenQuery()I

    move-result v2

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->s:Lcom/zui/launcher/allapps/FloatingHeaderView;

    invoke-virtual {v2}, Lcom/zui/launcher/allapps/FloatingHeaderView;->getMaxTranslation()I

    move-result v2

    :goto_3
    iget-object v4, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    array-length v5, v4

    if-ge v6, v5, :cond_4

    aget-object v5, v4, v6

    iget-object v5, v5, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->c:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    aget-object v5, v4, v6

    iget-object v5, v5, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->c:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->right:I

    aget-object v5, v4, v6

    iget-object v5, v5, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->c:Landroid/graphics/Rect;

    add-int v7, v1, v3

    iput v7, v5, Landroid/graphics/Rect;->left:I

    aget-object v5, v4, v6

    iget-object v5, v5, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->c:Landroid/graphics/Rect;

    iput v2, v5, Landroid/graphics/Rect;->top:I

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->a()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const v1, 0x7f0a039e

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, v2, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a4

    :goto_4
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_6
    const v1, 0x7f0a007c

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a3

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a2

    :goto_5
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_8
    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getScrollBar()Lcom/zui/launcher/views/RecyclerViewFastScroller;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getScrollBar()Lcom/zui/launcher/views/RecyclerViewFastScroller;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->z:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    neg-int v2, v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->setMarginEnd(ZILandroid/graphics/Rect;)V

    :cond_9
    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->z:Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lcom/zui/launcher/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->p:Lcom/zui/launcher/allapps/SearchUiManager;

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->z:Landroid/graphics/Rect;

    invoke-interface {v0, p0}, Lcom/zui/launcher/allapps/SearchUiManager;->getScrollRangeDelta(Landroid/graphics/Rect;)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->f(F)V

    return-void
.end method

.method public setLastSearchQuery(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/zui/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v2, p1}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->setLastSearchQuery(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->u:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->v:Z

    invoke-direct {p0, v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->s(Z)V

    :cond_1
    return-void
.end method

.method public setRecyclerViewVerticalFadingEdgeEnabled(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->applyVerticalFadingEdgeEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setupHeader()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->s:Lcom/zui/launcher/allapps/FloatingHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->s:Lcom/zui/launcher/allapps/FloatingHeaderView;

    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v3, 0x1

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/zui/launcher/allapps/FloatingHeaderView;->setup([Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;Z)V

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->hasSearchContent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->s:Lcom/zui/launcher/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->getMaxTranslationWhenQuery()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->s:Lcom/zui/launcher/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->getMaxTranslation()I

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->c:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->top:I

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/zui/launcher/views/RecyclerViewFastScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/zui/launcher/views/RecyclerViewFastScroller;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->q:Landroid/view/View;

    invoke-virtual {v2, v3, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->h:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/zui/launcher/BaseRecyclerView;->shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public updateZuiDots(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/zui/launcher/util/ShortcutUserKey;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->updateZuiDots(Ljava/util/Set;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->q:Landroid/view/View;

    instance-of v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->updateZuiDots(Ljava/util/Set;)V

    :cond_2
    return-void
.end method
