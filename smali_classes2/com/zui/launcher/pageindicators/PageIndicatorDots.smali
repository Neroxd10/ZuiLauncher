.class public Lcom/zui/launcher/pageindicators/PageIndicatorDots;
.super Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;
.source ""

# interfaces
.implements Lcom/zui/launcher/Insettable;
.implements Lcom/zui/launcher/pageindicators/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/pageindicators/PageIndicatorDots$d;,
        Lcom/zui/launcher/pageindicators/PageIndicatorDots$e;
    }
.end annotation


# static fields
.field private static final r:Landroid/graphics/RectF;

.field private static final s:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/pageindicators/PageIndicatorDots;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:F

.field private c:I

.field private d:I

.field private final e:Z

.field private f:I

.field private g:I

.field private h:F

.field private i:F

.field private j:Landroid/animation/ObjectAnimator;

.field private k:[F

.field private final l:Lcom/zui/launcher/Launcher;

.field private m:F

.field private n:I

.field private o:I

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat$OverlayChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->r:Landroid/graphics/RectF;

    new-instance v0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$a;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "current_position"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/pageindicators/PageIndicatorDots$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->s:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->p:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->q:Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat$OverlayChangeListener;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->l:Lcom/zui/launcher/Launcher;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->a:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0705ae

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    iput p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0705ad

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->m:F

    new-instance p1, Lcom/zui/launcher/pageindicators/PageIndicatorDots$e;

    invoke-direct {p1, p0, p2}, Lcom/zui/launcher/pageindicators/PageIndicatorDots$e;-><init>(Lcom/zui/launcher/pageindicators/PageIndicatorDots;Lcom/zui/launcher/pageindicators/PageIndicatorDots$a;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->setColor()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/pageindicators/PageIndicatorDots;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->h:F

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/pageindicators/PageIndicatorDots;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->h:F

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/pageindicators/PageIndicatorDots;)[F
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->k:[F

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/pageindicators/PageIndicatorDots;[F)[F
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->k:[F

    return-object p1
.end method

.method static synthetic e(Lcom/zui/launcher/pageindicators/PageIndicatorDots;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->j:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic f(Lcom/zui/launcher/pageindicators/PageIndicatorDots;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->i:F

    return p0
.end method

.method static synthetic g(Lcom/zui/launcher/pageindicators/PageIndicatorDots;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->h(F)V

    return-void
.end method

.method private getActiveRect()Landroid/graphics/RectF;
    .locals 10

    iget v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->h:F

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->m:F

    invoke-direct {p0}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->i()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v6, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->o:I

    int-to-float v6, v6

    iget v7, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    add-float/2addr v6, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->f:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v6

    div-float/2addr v7, v3

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->o:I

    int-to-float v5, v5

    mul-float/2addr v8, v3

    sub-float/2addr v5, v8

    add-float/2addr v5, v4

    add-float/2addr v7, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->f:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    mul-float/2addr v7, v4

    sub-float/2addr v5, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v3

    iget v6, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    sub-float v7, v5, v6

    :goto_1
    sget-object v5, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->r:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v6, v8

    iget v9, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    sub-float/2addr v6, v9

    iput v6, v5, Landroid/graphics/RectF;->top:F

    sget-object v5, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->r:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    iget v9, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    add-float/2addr v6, v9

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->r:Landroid/graphics/RectF;

    mul-float/2addr v1, v4

    add-float/2addr v7, v1

    iput v7, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v7

    iput v2, v5, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v8

    if-gez v1, :cond_2

    mul-float/2addr v0, v4

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    iput v2, v5, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_2
    add-float/2addr v2, v4

    iput v2, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v8

    mul-float/2addr v0, v4

    mul-float/2addr v0, v3

    add-float/2addr v7, v0

    iput v7, v5, Landroid/graphics/RectF;->left:F

    :goto_2
    iget-boolean v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->e:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->r:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    sget-object v1, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->r:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sget-object v2, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->r:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, v3

    iput p0, v1, Landroid/graphics/RectF;->right:F

    iget p0, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p0, v0

    iput p0, v2, Landroid/graphics/RectF;->left:F

    :cond_3
    sget-object p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->r:Landroid/graphics/RectF;

    return-object p0
.end method

.method private h(F)V
    .locals 3

    iput p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->i:F

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->l:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->q:Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat$OverlayChangeListener;

    instance-of v0, v0, Lcom/zui/launcher/Workspace;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->f:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->i:F

    :cond_0
    iget v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->f:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->h:F

    iput p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->i:F

    :cond_1
    iget p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->h:F

    iget v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->i:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    iget p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->i:F

    iput p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->h:F

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->j:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_4

    iget p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->h:F

    iget v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->i:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->h:F

    iget v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->i:F

    cmpl-float v0, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    if-lez v0, :cond_3

    sub-float/2addr p1, v2

    goto :goto_0

    :cond_3
    add-float/2addr p1, v2

    :goto_0
    sget-object v0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->s:Landroid/util/Property;

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->j:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/pageindicators/PageIndicatorDots$d;-><init>(Lcom/zui/launcher/pageindicators/PageIndicatorDots;Lcom/zui/launcher/pageindicators/PageIndicatorDots$a;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->j:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    return-void
.end method

.method private i()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->q:Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat$OverlayChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat$OverlayChangeListener;->isOverlayIndicatorShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private j()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08026e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->p:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->l:Lcom/zui/launcher/Launcher;

    iget-boolean v1, v1, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v1, :cond_0

    const v1, 0x7f060294

    goto :goto_0

    :cond_0
    const v1, 0x7f060295

    :goto_0
    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method


# virtual methods
.method public layout(IIII)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v3, p3, p1

    iget-object v4, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->l:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v5

    if-nez v5, :cond_0

    if-ltz p1, :cond_1

    :cond_0
    invoke-virtual {v4}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq p1, v0, :cond_2

    :cond_1
    add-int/2addr v3, v0

    invoke-super {p0, v0, p2, v3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    if-le p3, v2, :cond_3

    sub-int/2addr v2, v1

    sub-int p1, v2, v3

    invoke-super {p0, p1, p2, v2, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->m:F

    invoke-direct {p0}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->o:I

    int-to-float v2, v2

    iget v3, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    add-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->f:I

    if-eqz v1, :cond_1

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v2

    div-float/2addr v4, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    sub-float/2addr v4, v2

    div-float/2addr v4, v3

    iget v5, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    sub-float/2addr v4, v5

    :goto_1
    const/4 v5, 0x0

    if-eqz v1, :cond_2

    iget-boolean v6, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->e:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->p:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->o:I

    iget v8, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->n:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v9, v8

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v6, v5, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v7, v9

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v6, v4

    neg-int v7, v9

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget v6, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->o:I

    int-to-float v6, v6

    iget v7, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    add-float/2addr v6, v0

    add-float/2addr v4, v6

    :cond_2
    iget v3, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    add-float/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v6, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->k:[F

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->e:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v4, v6, v4

    neg-float v0, v0

    :cond_3
    move v6, v5

    :goto_2
    iget-object v7, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->k:[F

    array-length v7, v7

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->a:Landroid/graphics/Paint;

    iget v8, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->g:I

    if-ne v6, v8, :cond_4

    iget v8, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->c:I

    goto :goto_3

    :cond_4
    iget v8, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->d:I

    :goto_3
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget v7, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    iget-object v8, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->k:[F

    aget v8, v8, v6

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-float/2addr v4, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->a:Landroid/graphics/Paint;

    iget v7, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->d:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    move v6, v5

    :goto_4
    iget v7, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->f:I

    if-ge v6, v7, :cond_6

    iget v7, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    iget-object v8, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-float/2addr v4, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->a:Landroid/graphics/Paint;

    iget v6, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->c:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->getActiveRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v6, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    iget-object v7, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_7
    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->e:Z

    if-eqz v1, :cond_8

    sub-float/2addr v4, v0

    add-float/2addr v4, v2

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->p:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->o:I

    iget v2, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->n:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v1, p0

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v4

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->f:I

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    :cond_1
    const/high16 p2, 0x40800000    # 4.0f

    iget v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->b:F

    mul-float/2addr v0, p2

    float-to-int p2, v0

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;->mDownRawX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;->mDownRawY:I

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public playEntryAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->k:[F

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->k:[F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x409ccccd    # 4.9f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x190

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/zui/launcher/pageindicators/PageIndicatorDots$b;

    invoke-direct {v5, p0, v3}, Lcom/zui/launcher/pageindicators/PageIndicatorDots$b;-><init>(Lcom/zui/launcher/pageindicators/PageIndicatorDots;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    mul-int/lit16 v5, v3, 0x96

    add-int/lit16 v5, v5, 0x12c

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$c;

    invoke-direct {v0, p0}, Lcom/zui/launcher/pageindicators/PageIndicatorDots$c;-><init>(Lcom/zui/launcher/pageindicators/PageIndicatorDots;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public prepareEntryAnimation()V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->f:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->k:[F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public removeOverlayMark()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setActiveMarker(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->g:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->g:I

    :cond_0
    return-void
.end method

.method public setColor()V
    .locals 3

    invoke-direct {p0}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->j()V

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->l:Lcom/zui/launcher/Launcher;

    iget-boolean v0, v0, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060297

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060296

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->c:I

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->l:Lcom/zui/launcher/Launcher;

    iget-boolean v0, v0, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060299

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060298

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->d:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->l:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->l:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getRotationMode()Lcom/zui/launcher/graphics/RotationMode;

    move-result-object v2

    iget-object v4, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->l:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/DeviceProfile;->getInsetsWithMarginH()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5, p1}, Lcom/zui/launcher/graphics/RotationMode;->mapRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, v0, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_1
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

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
    .locals 0

    iput p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->f:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setOverlayChangeListener(Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat$OverlayChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->q:Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat$OverlayChangeListener;

    return-void
.end method

.method public setScroll(II)V
    .locals 5

    iget v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->f:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->e:Z

    if-eqz v0, :cond_0

    sub-int p1, p2, p1

    :cond_0
    iget v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->f:I

    sub-int/2addr v0, v1

    div-int/2addr p2, v0

    if-nez p2, :cond_1

    move p2, v1

    :cond_1
    div-int v0, p1, p2

    mul-int v2, v0, p2

    add-int v3, v2, p2

    const v4, 0x3dcccccd    # 0.1f

    int-to-float p2, p2

    mul-float/2addr p2, v4

    int-to-float p1, p1

    int-to-float v2, v2

    add-float/2addr v2, p2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    :goto_0
    int-to-float p1, v0

    :goto_1
    invoke-direct {p0, p1}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->h(F)V

    goto :goto_2

    :cond_2
    int-to-float v2, v3

    sub-float/2addr v2, p2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    int-to-float p1, v0

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    goto :goto_1

    :cond_4
    :goto_2
    iget p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->f:I

    if-ne p1, v1, :cond_5

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->h(F)V

    :cond_5
    return-void
.end method

.method public showOverlayMark()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->showOverlayMark(Z)V

    return-void
.end method

.method public showOverlayMark(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->q:Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat$OverlayChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat$OverlayChangeListener;->isOverlayIndicatorShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->p:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->j()V

    iget-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->n:I

    iput p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->o:I

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public stopAllAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->j:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->j:Landroid/animation/ObjectAnimator;

    :cond_0
    iget v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->g:I

    int-to-float v0, v0

    iput v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->i:F

    sget-object v1, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->s:Landroid/util/Property;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
