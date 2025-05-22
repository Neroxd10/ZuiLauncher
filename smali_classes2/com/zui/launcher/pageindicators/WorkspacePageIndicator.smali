.class public Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;
.super Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;
.source ""

# interfaces
.implements Lcom/zui/launcher/Insettable;
.implements Lcom/zui/launcher/pageindicators/PageIndicator;


# static fields
.field public static final BLACK_ALPHA:I = 0xa5

.field public static final WHITE_ALPHA:I = 0xb2

.field private static final m:I

.field private static final n:I

.field private static final o:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:[Landroid/animation/ValueAnimator;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/zui/launcher/Launcher;

.field private d:Z

.field private e:I

.field private f:I

.field private g:F

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Paint;

.field private final k:I

.field private l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v1

    sput v1, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->m:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v1

    sput v1, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->n:I

    new-instance v1, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator$a;

    const-string v2, "paint_alpha"

    invoke-direct {v1, v0, v2}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->o:Landroid/util/Property;

    new-instance v1, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator$b;

    const-class v2, Ljava/lang/Float;

    const-string v3, "num_pages"

    invoke-direct {v1, v2, v3}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->p:Landroid/util/Property;

    new-instance v1, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator$c;

    const-string v2, "total_scroll"

    invoke-direct {v1, v0, v2}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->q:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->a:[Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->b:Landroid/os/Handler;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->d:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->e:I

    new-instance p3, Lcom/zui/launcher/pageindicators/a;

    invoke-direct {p3, p0}, Lcom/zui/launcher/pageindicators/a;-><init>(Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;)V

    iput-object p3, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->l:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->c:Lcom/zui/launcher/Launcher;

    const p2, 0x7f0702f4

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->k:I

    invoke-static {p1}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->supportsDarkText()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p2, 0xa5

    goto :goto_0

    :cond_0
    const/16 p2, 0xb2

    :goto_0
    iput p2, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->e:I

    iget-object p0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->j:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    const/high16 p1, -0x1000000

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->j:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->g:F

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->g:F

    return p1
.end method

.method static synthetic d(Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->i:I

    return p0
.end method

.method static synthetic e(Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->i:I

    return p1
.end method

.method static synthetic f(Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;)[Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->a:[Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private g(I)V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->f:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->f:I

    sget-object v0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->o:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->k(Landroid/animation/ValueAnimator;I)V

    return-void
.end method

.method private h(I)V
    .locals 3

    sget-object v0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->q:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->k(Landroid/animation/ValueAnimator;I)V

    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->b:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->l:Ljava/lang/Runnable;

    sget v1, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->n:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private k(Landroid/animation/ValueAnimator;I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->a:[Landroid/animation/ValueAnimator;

    aget-object v1, v0, p2

    if-eqz v1, :cond_0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->a:[Landroid/animation/ValueAnimator;

    aput-object p1, v0, p2

    aget-object p1, v0, p2

    new-instance v0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator$d;

    invoke-direct {v0, p0, p2}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator$d;-><init>(Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->a:[Landroid/animation/ValueAnimator;

    aget-object p1, p1, p2

    sget v0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->m:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->a:[Landroid/animation/ValueAnimator;

    aget-object p0, p0, p2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public synthetic j()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->g(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget v0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->i:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->g:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->h:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v2, v1

    iget v3, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->g:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v2, v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->k:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v5, v0

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->k:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    int-to-float v7, v0

    int-to-float v8, v1

    int-to-float v9, v1

    iget-object v10, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->j:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public pauseAnimations()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->a:[Landroid/animation/ValueAnimator;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeOverlayMark()V
    .locals 0

    return-void
.end method

.method public setActiveMarker(I)V
    .locals 0

    return-void
.end method

.method public setColor()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, v0, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->workspaceCellPaddingXPx:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0x51

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMarkersCount(I)V
    .locals 4

    int-to-float p1, p1

    iget v0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->g:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->p:Landroid/util/Property;

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->k(Landroid/animation/ValueAnimator;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->a:[Landroid/animation/ValueAnimator;

    aget-object v0, p1, v1

    if-eqz v0, :cond_1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->a:[Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    aput-object p1, p0, v1

    :cond_1
    :goto_0
    return-void
.end method

.method public setOverlayChangeListener(Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat$OverlayChangeListener;)V
    .locals 0

    return-void
.end method

.method public setScroll(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->e:I

    invoke-direct {p0, v0}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->g(I)V

    iput p1, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->h:I

    iget p1, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->i:I

    if-nez p1, :cond_1

    iput p2, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->i:I

    goto :goto_0

    :cond_1
    if-eq p1, p2, :cond_2

    invoke-direct {p0, p2}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->h(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    iget-boolean p1, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->d:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->i()V

    :cond_3
    return-void
.end method

.method public setShouldAutoHide(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->d:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->j:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->i()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->b:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showOverlayMark()V
    .locals 0

    return-void
.end method

.method public showOverlayMark(Z)V
    .locals 0

    return-void
.end method

.method public skipAnimationsToEnd()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->a:[Landroid/animation/ValueAnimator;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
