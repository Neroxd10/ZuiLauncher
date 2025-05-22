.class public Lcom/zui/quickstep/views/LiveTileOverlay;
.super Landroid/graphics/drawable/Drawable;
.source ""


# static fields
.field private static final i:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/quickstep/views/LiveTileOverlay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/RectF;

.field private d:F

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/animation/Animator;

.field private g:Z

.field private h:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/quickstep/views/LiveTileOverlay$a;

    const-string v1, "progress"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/views/LiveTileOverlay$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/views/LiveTileOverlay;->i:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->b:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->g:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->h:F

    iget-object p0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/views/LiveTileOverlay;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/LiveTileOverlay;->d(F)V

    return-void
.end method

.method static synthetic b(Lcom/zui/quickstep/views/LiveTileOverlay;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->h:F

    return p0
.end method

.method static synthetic c(Lcom/zui/quickstep/views/LiveTileOverlay;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->f:Landroid/animation/Animator;

    return-object p1
.end method

.method private d(F)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->h:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public cancelIconAnimation()F
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->f:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget p0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->h:F

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->c:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->g:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->d:F

    iget-object v2, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    iget v1, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->h:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDrawEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->g:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->g:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public startIconAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->f:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    sget-object v0, Lcom/zui/quickstep/views/LiveTileOverlay;->i:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->f:Landroid/animation/Animator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->f:Landroid/animation/Animator;

    new-instance v1, Lcom/zui/quickstep/views/LiveTileOverlay$b;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/views/LiveTileOverlay$b;-><init>(Lcom/zui/quickstep/views/LiveTileOverlay;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->f:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public update(Landroid/graphics/RectF;F)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iput-object p1, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->c:Landroid/graphics/RectF;

    iput p2, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->d:F

    iget-object p2, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/zui/quickstep/views/LiveTileOverlay;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
