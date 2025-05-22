.class public Lcom/zui/launcher/icons/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/icons/FastBitmapDrawable$Factory;,
        Lcom/zui/launcher/icons/FastBitmapDrawable$FastBitmapConstantState;
    }
.end annotation


# static fields
.field public static final CLICK_FEEDBACK_DURATION:I = 0xc8

.field private static final h:Landroid/view/animation/Interpolator;

.field private static final i:Landroid/view/animation/Interpolator;

.field private static j:Landroid/graphics/ColorFilter;

.field private static final k:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/icons/FastBitmapDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Z

.field c:F

.field private d:Landroid/animation/ObjectAnimator;

.field private e:F

.field private f:I

.field private g:Z

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected final mIconColor:I

.field protected mIsDisabled:Z

.field protected final mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/zui/launcher/icons/FastBitmapDrawable;->h:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/zui/launcher/icons/FastBitmapDrawable;->i:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/zui/launcher/icons/FastBitmapDrawable$a;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "scale"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/icons/FastBitmapDrawable$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/icons/FastBitmapDrawable;->k:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Bitmap;IZ)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->c:F

    iput v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->e:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->g:Z

    iput-object p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mIconColor:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setFilterBitmap(Z)V

    invoke-virtual {p0, p3}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/icons/BitmapInfo;)V
    .locals 1

    iget-object v0, p1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/icons/FastBitmapDrawable;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->e:F

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/icons/FastBitmapDrawable;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->e:F

    return p1
.end method

.method private c()Landroid/graphics/ColorFilter;
    .locals 6

    sget-object v0, Lcom/zui/launcher/icons/FastBitmapDrawable;->j:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    const/high16 v2, 0x3f000000    # 0.5f

    const/16 v3, 0x7f

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v4

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x6

    aput v2, v4, v5

    const/16 v5, 0xc

    aput v2, v4, v5

    const/4 v2, 0x4

    int-to-float v3, v3

    aput v3, v4, v2

    const/16 v2, 0x9

    aput v3, v4, v2

    const/16 v2, 0xe

    aput v3, v4, v2

    const/16 v2, 0x12

    iget p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->c:F

    aput p0, v4, v2

    invoke-virtual {v1, v0}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    new-instance p0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    sput-object p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->j:Landroid/graphics/ColorFilter;

    :cond_0
    sget-object p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->j:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public static newIcon(Landroid/content/Context;Lcom/zui/launcher/icons/BitmapInfo;)Lcom/zui/launcher/icons/FastBitmapDrawable;
    .locals 1

    instance-of v0, p1, Lcom/zui/launcher/icons/FastBitmapDrawable$Factory;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/icons/FastBitmapDrawable$Factory;

    invoke-interface {p1}, Lcom/zui/launcher/icons/FastBitmapDrawable$Factory;->newDrawable()Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/icons/BitmapInfo;->isLowRes()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/zui/launcher/icons/PlaceHolderIconDrawable;

    invoke-direct {v0, p1, p0}, Lcom/zui/launcher/icons/PlaceHolderIconDrawable;-><init>(Lcom/zui/launcher/icons/BitmapInfo;Landroid/content/Context;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-direct {p0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Lcom/zui/launcher/icons/BitmapInfo;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->e:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p0, p1, v1}, Lcom/zui/launcher/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method protected drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setHwBitmapsInSwModeEnabled(Z)V

    iget-object v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->f:I

    return p0
.end method

.method public getAnimatedScale()F
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->d:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->e:F

    :goto_0
    return p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3

    new-instance v0, Lcom/zui/launcher/icons/FastBitmapDrawable$FastBitmapConstantState;

    iget-object v1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mIconColor:I

    iget-boolean p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mIsDisabled:Z

    invoke-direct {v0, v1, v2, p0}, Lcom/zui/launcher/icons/FastBitmapDrawable$FastBitmapConstantState;-><init>(Landroid/graphics/Bitmap;IZ)V

    return-object v0
.end method

.method public getIconColor()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mIconColor:I

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0
.end method

.method public getMinimumHeight()I
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getMinimumWidth()I
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getScale()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->e:F

    return p0
.end method

.method public isDisabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mIsDisabled:Z

    return p0
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isThemed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onStateChange([I)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    const v5, 0x10100a7

    if-ne v4, v5, :cond_0

    move p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_1
    iget-boolean v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->b:Z

    if-eq v0, p1, :cond_5

    iput-boolean p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->b:Z

    iget-object p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->d:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->d:Landroid/animation/ObjectAnimator;

    :cond_2
    iget-boolean p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->b:Z

    const-wide/16 v4, 0xc8

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->g:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/zui/launcher/icons/FastBitmapDrawable;->k:Landroid/util/Property;

    new-array v0, v3, [F

    const v2, 0x3f8ccccd    # 1.1f

    aput v2, v0, v1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->d:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/zui/launcher/icons/FastBitmapDrawable;->h:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    sget-object p1, Lcom/zui/launcher/icons/FastBitmapDrawable;->k:Landroid/util/Property;

    new-array v2, v3, [F

    aput v0, v2, v1

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->d:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/zui/launcher/icons/FastBitmapDrawable;->i:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    :cond_4
    iput v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->e:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_3
    return v3

    :cond_5
    return v1
.end method

.method public resetScale()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setScale(F)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->f:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->f:I

    iget-object v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->a:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->updateFilter()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public setIsDisabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mIsDisabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mIsDisabled:Z

    invoke-virtual {p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->updateFilter()V

    :cond_0
    return-void
.end method

.method public setPressedScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->g:Z

    return-void
.end method

.method public setScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->d:Landroid/animation/ObjectAnimator;

    :cond_0
    iput p1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->e:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method protected updateFilter()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->c()Landroid/graphics/ColorFilter;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->a:Landroid/graphics/ColorFilter;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
