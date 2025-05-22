.class public Lcom/zui/launcher/graphics/PreloadIconDrawable;
.super Lcom/zui/launcher/icons/FastBitmapDrawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/graphics/PreloadIconDrawable$PreloadIconConstantState;
    }
.end annotation


# static fields
.field private static final E:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/graphics/PreloadIconDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final F:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Bitmap;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:F

.field private C:Landroid/animation/ObjectAnimator;

.field private D:Z

.field private final l:Landroid/graphics/Matrix;

.field private final m:Landroid/graphics/PathMeasure;

.field private final n:Lcom/zui/launcher/ItemInfoWithIcon;

.field private final o:Landroid/graphics/Path;

.field private final p:Landroid/graphics/Path;

.field private final q:Landroid/graphics/Path;

.field private final r:Landroid/graphics/Paint;

.field private s:Landroid/graphics/Bitmap;

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:Z

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/graphics/PreloadIconDrawable$a;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "internalStateProgress"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/graphics/PreloadIconDrawable$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->E:Landroid/util/Property;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->F:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/ItemInfoWithIcon;I[IZ)V
    .locals 2

    iget-object v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-direct {p0, v0}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Lcom/zui/launcher/icons/BitmapInfo;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->l:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->m:Landroid/graphics/PathMeasure;

    iput-object p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->n:Lcom/zui/launcher/ItemInfoWithIcon;

    const/16 v0, 0x64

    invoke-static {v0}, Lcom/zui/launcher/icons/GraphicsUtils;->getShapePath(I)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->o:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->p:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->q:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->r:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->r:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iput p2, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->t:I

    const/4 p2, 0x0

    aget p2, p3, p2

    iput p2, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->u:I

    const/4 p2, 0x1

    aget p2, p3, p2

    iput p2, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->v:I

    iput-boolean p4, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->w:Z

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->getProgressLevel()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/zui/launcher/graphics/PreloadIconDrawable;->i(F)V

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->isAppStartable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/graphics/PreloadIconDrawable;->setIsStartable(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget v0, v0, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-static {p2, v0}, Lcom/zui/launcher/graphics/IconPalette;->getPreloadProgressColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p2}, Lcom/zui/launcher/graphics/PreloadIconDrawable;->g(Landroid/content/Context;)[I

    move-result-object v1

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->isNightMode(Landroid/content/Context;)Z

    move-result p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/zui/launcher/graphics/PreloadIconDrawable;-><init>(Lcom/zui/launcher/ItemInfoWithIcon;I[IZ)V

    return-void
.end method

.method static synthetic d(Lcom/zui/launcher/graphics/PreloadIconDrawable;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->B:F

    return p0
.end method

.method static synthetic e(Lcom/zui/launcher/graphics/PreloadIconDrawable;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/PreloadIconDrawable;->i(F)V

    return-void
.end method

.method static synthetic f(Lcom/zui/launcher/graphics/PreloadIconDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->A:Z

    return p1
.end method

.method private static g(Landroid/content/Context;)[I
    .locals 3

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-static {v0}, Lcom/zui/launcher/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, p0, v2

    invoke-static {v0}, Lcom/zui/launcher/util/Themes;->getColorBackgroundFloating(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p0, v1

    return-object p0
.end method

.method private h(IIF)Landroid/graphics/Bitmap;
    .locals 5

    shl-int/lit8 v0, p1, 0x10

    or-int/2addr v0, p2

    iget-boolean v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->w:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int/2addr v0, v1

    sget-object v1, Lcom/zui/launcher/graphics/PreloadIconDrawable;->F:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Path;

    iget-object v4, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->o:Landroid/graphics/Path;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->r:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->D:Z

    if-eqz v3, :cond_4

    const/high16 v3, 0x55000000

    goto :goto_3

    :cond_4
    iget v3, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->u:I

    :goto_3
    const/4 v4, 0x0

    invoke-virtual {v1, p3, v4, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object p3, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->r:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->D:Z

    if-eqz v1, :cond_5

    const v1, 0x77eeeeee

    goto :goto_4

    :cond_5
    iget v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->v:I

    :goto_4
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->r:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->p:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->r:Landroid/graphics/Paint;

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->r:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->clearShadowLayer()V

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object p2, Lcom/zui/launcher/graphics/PreloadIconDrawable;->F:Landroid/util/SparseArray;

    new-instance p3, Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->o:Landroid/graphics/Path;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method

.method private i(F)V
    .locals 6

    iput p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->B:F

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/16 v2, 0xff

    const v3, 0x3f19999a    # 0.6f

    if-gtz v1, :cond_0

    iput v3, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->z:F

    iget-object v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->p:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iput v2, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->x:I

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v4, p1, v1

    if-gez v4, :cond_1

    cmpl-float v4, p1, v0

    if-lez v4, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->m:Landroid/graphics/PathMeasure;

    iget v4, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->y:F

    mul-float/2addr p1, v4

    iget-object v4, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->q:Landroid/graphics/Path;

    const/4 v5, 0x1

    invoke-virtual {v1, v0, p1, v4, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iput v3, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->z:F

    iput v2, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->x:I

    goto :goto_0

    :cond_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->n:Lcom/zui/launcher/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->isDisabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    iget-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->p:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->q:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    sub-float/2addr p1, v1

    const v0, 0x3e99999a    # 0.3f

    div-float/2addr p1, v0

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_2

    iput v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->z:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->x:I

    goto :goto_0

    :cond_2
    sub-float/2addr v1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->x:I

    const v0, 0x3ecccccc    # 0.39999998f

    mul-float/2addr p1, v0

    add-float/2addr p1, v3

    iput p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->z:F

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private j(FZZ)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->C:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->C:Landroid/animation/ObjectAnimator;

    :cond_0
    iget v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->B:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->B:F

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_2

    move p2, v1

    :cond_2
    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->A:Z

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/zui/launcher/graphics/PreloadIconDrawable;->E:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    aput p1, v0, v1

    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->C:Landroid/animation/ObjectAnimator;

    iget v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->B:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x43fa0000    # 500.0f

    mul-float/2addr p1, v0

    float-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->C:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->C:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/zui/launcher/graphics/PreloadIconDrawable$b;

    invoke-direct {p2, p0}, Lcom/zui/launcher/graphics/PreloadIconDrawable$b;-><init>(Lcom/zui/launcher/graphics/PreloadIconDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->C:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/PreloadIconDrawable;->i(F)V

    :goto_1
    return-void
.end method

.method public static newPendingIcon(Landroid/content/Context;Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/graphics/PreloadIconDrawable;
    .locals 1

    new-instance v0, Lcom/zui/launcher/graphics/PreloadIconDrawable;

    invoke-direct {v0, p1, p0}, Lcom/zui/launcher/graphics/PreloadIconDrawable;-><init>(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->A:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->r:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->D:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->t:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->u:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->r:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->q:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->z:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 10

    new-instance v8, Lcom/zui/launcher/graphics/PreloadIconDrawable$PreloadIconConstantState;

    iget-object v1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mIconColor:I

    iget-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->n:Lcom/zui/launcher/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->isAppStartable()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->n:Lcom/zui/launcher/ItemInfoWithIcon;

    iget v6, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->t:I

    const/4 v0, 0x2

    new-array v7, v0, [I

    const/4 v0, 0x0

    iget v9, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->u:I

    aput v9, v7, v0

    iget v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->v:I

    aput v0, v7, v3

    iget-boolean p0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->w:Z

    move-object v0, v8

    move v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/graphics/PreloadIconDrawable$PreloadIconConstantState;-><init>(Landroid/graphics/Bitmap;IZLcom/zui/launcher/ItemInfoWithIcon;I[IZ)V

    return-object v8
.end method

.method public hasNotCompleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->A:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public maybePerformFinishedAnimation()V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->B:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->B:F

    :cond_0
    const v0, 0x3fa66666    # 1.3f

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/zui/launcher/graphics/PreloadIconDrawable;->j(FZZ)V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->l:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41600000    # 14.0f

    sub-float/2addr v1, v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v1, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    sub-float/2addr v5, v3

    div-float/2addr v5, v4

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->l:Landroid/graphics/Matrix;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/high16 v2, 0x40e00000    # 7.0f

    add-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v1, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    add-float/2addr v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->l:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->p:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->r:Landroid/graphics/Paint;

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-float/2addr v0, v3

    invoke-direct {p0, v1, p1, v0}, Lcom/zui/launcher/graphics/PreloadIconDrawable;->h(IIF)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->s:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->m:Landroid/graphics/PathMeasure;

    iget-object v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->p:Landroid/graphics/Path;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->m:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->y:F

    iget p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->B:F

    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/PreloadIconDrawable;->i(F)V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 3

    int-to-float p1, p1

    const v0, 0x3c23d70a    # 0.01f

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, p1, v0, v2}, Lcom/zui/launcher/graphics/PreloadIconDrawable;->j(FZZ)V

    return v1
.end method

.method public setIsStartable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->D:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/zui/launcher/graphics/PreloadIconDrawable;->D:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    :cond_0
    return-void
.end method
