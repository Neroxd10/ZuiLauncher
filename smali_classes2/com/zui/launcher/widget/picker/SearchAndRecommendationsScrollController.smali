.class final Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/views/RecyclerViewFastScroller$OnFastScrollChangeListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

.field private final c:Landroid/view/View;

.field private final d:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

.field private final e:Landroid/widget/RelativeLayout;

.field private final f:Landroid/widget/LinearLayout;

.field private final g:Landroid/widget/FrameLayout;

.field private h:I

.field private final i:Landroid/animation/ValueAnimator;

.field private final j:Landroid/graphics/Point;

.field private k:I

.field private final l:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final n:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

.field private p:I

.field private q:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;

.field private r:I

.field private s:Z


# direct methods
.method constructor <init>(ZILcom/zui/launcher/widget/picker/WidgetsFullSheet$d;Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/zui/launcher/workprofile/PersonalWorkPagedView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p5    # Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/zui/launcher/workprofile/PersonalWorkPagedView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->i:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->j:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->p:I

    new-instance v1, Lcom/zui/launcher/widget/picker/a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/widget/picker/a;-><init>(Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;)V

    iput-object v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->q:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;

    iput v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->r:I

    iput-boolean v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->s:Z

    iput-boolean p1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->a:Z

    iput-object p3, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object p1, p3, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;->setSearchAndRecommendationScrollController(Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object p1, p1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->d:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    iput-object p5, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->l:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    iput-object p6, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->e:Landroid/widget/RelativeLayout;

    iput-object p7, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->m:Landroid/view/View;

    iput-object p8, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->n:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    iput p2, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->h:I

    iput-object p9, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->f:Landroid/widget/LinearLayout;

    iput-object p10, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->g:Landroid/widget/FrameLayout;

    invoke-direct {p0, p4, v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->i(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private a()V
    .locals 0

    return-void
.end method

.method private b(Landroid/graphics/Point;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->o:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->o:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private static d(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v0

    return p0
.end method

.method private i(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;Z)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->o:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->setOnContentChangeListener(Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;)V

    :cond_1
    iput-object p1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->o:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->q:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->setOnContentChangeListener(Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;)V

    invoke-virtual {p0, p2}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->g(Z)V

    return-void
.end method


# virtual methods
.method public synthetic c()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->onScrollChanged()V

    return-void
.end method

.method public e(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->j:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->j:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->o:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->j:Landroid/graphics/Point;

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

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->j:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v1, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    throw v0
.end method

.method public f(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->j:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->j:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->o:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->j:Landroid/graphics/Point;

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

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->j:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v1, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    throw v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public g(Z)V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->p:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->i:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->p:I

    aput v2, v1, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->p:I

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->a()V

    :goto_0
    return-void
.end method

.method public h(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->i(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;Z)V

    return-void
.end method

.method public j(I)Z
    .locals 0

    iput p1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->k:I

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->k()Z

    move-result p0

    return p0
.end method

.method public k()Z
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->e:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->d(Landroid/view/View;)I

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->e:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->d(Landroid/view/View;)I

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->d(Landroid/view/View;)I

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->c:Landroid/view/View;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->d(Landroid/view/View;)I

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->g:Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->d(Landroid/view/View;)I

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->e:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->d(Landroid/view/View;)I

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->d(Landroid/view/View;)I

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->c:Landroid/view/View;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->d(Landroid/view/View;)I

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->g:Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->d(Landroid/view/View;)I

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;

    invoke-static {v0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->d(Landroid/view/View;)I

    move-result v0

    iget-boolean v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->a:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v1, v1, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->e:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->d(Landroid/view/View;)I

    move-result v1

    iget-object v4, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->b:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    iget-object v4, v4, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->g:Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;

    invoke-static {v4}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->d(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->r:I

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->m:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->h:I

    add-int/2addr v1, v0

    iget v4, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->r:I

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->m:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    iget-object v4, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->n:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eq v5, v1, :cond_0

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->n:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v2

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->n:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v4, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->r:I

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->n:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->r:I

    iget-object v5, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->n:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->n:Lcom/zui/launcher/workprofile/PersonalWorkPagedView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->d:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v0, :cond_2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->d:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v2

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v0, :cond_3

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    move v3, v2

    :cond_3
    iget-object v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v1

    if-eq v1, v0, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v4

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v1, v3, v0, v4, p0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    return v2
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->m:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->h:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->h:I

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->k()Z

    :cond_1
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->p:I

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->a()V

    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->o:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->getCurrentScrollY()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->p:I

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method
