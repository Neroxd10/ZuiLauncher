.class public Lcom/zui/launcher/DummyProgressView;
.super Landroid/widget/TextView;
.source ""


# static fields
.field private static k:Landroid/graphics/Paint; = null

.field private static l:I = -0x1

.field private static m:I = -0x1

.field private static n:I = -0x1

.field private static o:I

.field private static p:Landroid/graphics/drawable/Drawable;

.field private static q:I


# instance fields
.field private a:Z

.field private b:Lcom/zui/launcher/LauncherAppWidgetInfo$a;

.field private c:Z

.field private d:I

.field private e:I

.field private f:Landroid/graphics/RectF;

.field private g:Lcom/zui/launcher/LauncherAppWidgetInfo;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/DummyProgressView;->a:Z

    iput-boolean p1, p0, Lcom/zui/launcher/DummyProgressView;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/DummyProgressView;->d:I

    iput v0, p0, Lcom/zui/launcher/DummyProgressView;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/DummyProgressView;->g:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iput-object v0, p0, Lcom/zui/launcher/DummyProgressView;->h:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/zui/launcher/DummyProgressView;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/DummyProgressView;->a:Z

    iput-boolean p1, p0, Lcom/zui/launcher/DummyProgressView;->c:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/zui/launcher/DummyProgressView;->d:I

    iput p2, p0, Lcom/zui/launcher/DummyProgressView;->e:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/zui/launcher/DummyProgressView;->g:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iput-object p2, p0, Lcom/zui/launcher/DummyProgressView;->h:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/zui/launcher/DummyProgressView;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/DummyProgressView;->a:Z

    iput-boolean p1, p0, Lcom/zui/launcher/DummyProgressView;->c:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/zui/launcher/DummyProgressView;->d:I

    iput p2, p0, Lcom/zui/launcher/DummyProgressView;->e:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/zui/launcher/DummyProgressView;->g:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iput-object p2, p0, Lcom/zui/launcher/DummyProgressView;->h:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/zui/launcher/DummyProgressView;->i:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/DummyProgressView;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/DummyProgressView;->e:I

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/DummyProgressView;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/DummyProgressView;->e:I

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/DummyProgressView;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/DummyProgressView;->d:I

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/DummyProgressView;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/DummyProgressView;->d:I

    return p1
.end method

.method static synthetic e(Lcom/zui/launcher/DummyProgressView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/DummyProgressView;->setPositionState(Z)V

    return-void
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/DummyProgressView;->g:Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/DummyProgressView;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/zui/launcher/DummyProgressView;->d:I

    if-ltz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    sget v2, Lcom/zui/launcher/DummyProgressView;->l:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/zui/launcher/DummyProgressView;->m:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget-object v2, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v2, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget v2, Lcom/zui/launcher/DummyProgressView;->l:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v0, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iget-object v4, p0, Lcom/zui/launcher/DummyProgressView;->f:Landroid/graphics/RectF;

    if-nez v4, :cond_1

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/zui/launcher/DummyProgressView;->f:Landroid/graphics/RectF;

    :cond_1
    iget-object v4, p0, Lcom/zui/launcher/DummyProgressView;->f:Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v2

    sget v7, Lcom/zui/launcher/DummyProgressView;->l:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    add-int/2addr v2, v7

    int-to-float v2, v2

    invoke-virtual {v4, v5, v6, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v2, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    sget v3, Lcom/zui/launcher/DummyProgressView;->m:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    const v3, 0x33ffffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/zui/launcher/DummyProgressView;->f:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    sget-object v9, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v2, p0, Lcom/zui/launcher/DummyProgressView;->c:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zui/launcher/DummyProgressView;->g:Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    const v3, -0x66000001

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/zui/launcher/DummyProgressView;->f:Landroid/graphics/RectF;

    const/high16 v6, -0x3d4c0000    # -90.0f

    iget p0, p0, Lcom/zui/launcher/DummyProgressView;->d:I

    int-to-float v7, p0

    const/4 v8, 0x0

    sget-object v9, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    sget p0, Lcom/zui/launcher/DummyProgressView;->q:I

    div-int/lit8 v2, p0, 0x2

    sub-int/2addr v0, v2

    div-int/lit8 v2, p0, 0x2

    sub-int/2addr v1, v2

    sget-object v2, Lcom/zui/launcher/DummyProgressView;->p:Landroid/graphics/drawable/Drawable;

    add-int v3, v0, p0

    add-int/2addr p0, v1

    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/zui/launcher/DummyProgressView;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    const v3, -0xeb6609

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/zui/launcher/DummyProgressView;->f:Landroid/graphics/RectF;

    const/high16 v6, -0x3d4c0000    # -90.0f

    iget v2, p0, Lcom/zui/launcher/DummyProgressView;->d:I

    int-to-float v7, v2

    const/4 v8, 0x0

    sget-object v9, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    sget-object v2, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/zui/launcher/DummyProgressView;->e:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    int-to-float v0, v0

    sget v2, Lcom/zui/launcher/DummyProgressView;->o:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/DummyProgressView;->b:Lcom/zui/launcher/LauncherAppWidgetInfo$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/ProgressViewRecommendListener;

    invoke-direct {v0, p0}, Lcom/zui/launcher/ProgressViewRecommendListener;-><init>(Lcom/zui/launcher/DummyProgressView;)V

    iput-object v0, p0, Lcom/zui/launcher/DummyProgressView;->b:Lcom/zui/launcher/LauncherAppWidgetInfo$a;

    :cond_0
    return-void
.end method

.method public static getDarkFogBitmap(II)Landroid/graphics/Bitmap;
    .locals 8

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 v1, -0x41000000    # -0.5f

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v4, p0

    int-to-float v5, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    invoke-virtual {v7, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static getDarkFogBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v7, p0, v1, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 v1, -0x41000000    # -0.5f

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float v5, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    invoke-virtual {v7, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static getGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private i(I)V
    .locals 4

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/DummyProgressView;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/DummyProgressView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/zui/launcher/DummyProgressView;->e:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/DummyProgressView;->j:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/zui/launcher/DummyProgressView;->e:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xf

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/zui/launcher/DummyProgressView;->j:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/launcher/effect/QuadInterpolator;

    invoke-direct {v1, v0}, Lcom/zui/launcher/effect/QuadInterpolator;-><init>(B)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/zui/launcher/DummyProgressView;->j:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/launcher/DummyProgressView$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/DummyProgressView$a;-><init>(Lcom/zui/launcher/DummyProgressView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/zui/launcher/DummyProgressView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method private setPositionState(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/zui/launcher/DummyProgressView;->i:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x31

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    iget p1, p0, Lcom/zui/launcher/DummyProgressView;->i:I

    invoke-virtual {p0, v1, p1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearRecommendStatusForTheme()V
    .locals 0

    return-void
.end method

.method public createDarkMask()V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/DummyProgressView;->f:Landroid/graphics/RectF;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/DummyProgressView;->f(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public synthetic h()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/DummyProgressView;->updateRecommendStatus(Z)V

    return-void
.end method

.method public init(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/DummyProgressView;->g:Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->isRecommend()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/DummyProgressView;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/DummyProgressView;->g()V

    iget-object p0, p0, Lcom/zui/launcher/DummyProgressView;->b:Lcom/zui/launcher/LauncherAppWidgetInfo$a;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/LauncherAppWidgetInfo;->a(Lcom/zui/launcher/LauncherAppWidgetInfo$a;)V

    :cond_0
    return-void
.end method

.method public setLayoutData(III)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/DummyProgressView;->i:I

    sput p3, Lcom/zui/launcher/DummyProgressView;->m:I

    sput p2, Lcom/zui/launcher/DummyProgressView;->l:I

    return-void
.end method

.method public updateRecommendStatus()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/u;

    invoke-direct {v1, p0}, Lcom/zui/launcher/u;-><init>(Lcom/zui/launcher/DummyProgressView;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateRecommendStatus(Z)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/DummyProgressView;->g:Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/launcher/DummyProgressView;->a:Z

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppWidgetInfo;->isRecommend()Z

    move-result v2

    iput-boolean v2, p0, Lcom/zui/launcher/DummyProgressView;->a:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/zui/launcher/DummyProgressView;->b:Lcom/zui/launcher/LauncherAppWidgetInfo$a;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/DummyProgressView;->g()V

    iget-object v2, p0, Lcom/zui/launcher/DummyProgressView;->b:Lcom/zui/launcher/LauncherAppWidgetInfo$a;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/LauncherAppWidgetInfo;->a(Lcom/zui/launcher/LauncherAppWidgetInfo$a;)V

    :cond_1
    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->getDownloadProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/DummyProgressView;->i(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->getDownloadProgress()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/DummyProgressView;->e:I

    int-to-float p1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/DummyProgressView;->d:I

    :goto_0
    iget p1, p0, Lcom/zui/launcher/DummyProgressView;->d:I

    const/4 v2, 0x1

    if-ltz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-direct {p0, v1}, Lcom/zui/launcher/DummyProgressView;->setPositionState(Z)V

    invoke-virtual {p0}, Lcom/zui/launcher/DummyProgressView;->createDarkMask()V

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/DummyProgressView;->c:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/zui/launcher/DummyProgressView;->p:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080245

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sput-object p1, Lcom/zui/launcher/DummyProgressView;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0702b5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/zui/launcher/DummyProgressView;->q:I

    :cond_4
    sget p1, Lcom/zui/launcher/DummyProgressView;->l:I

    if-gez p1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070611

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/zui/launcher/DummyProgressView;->l:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070613

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/zui/launcher/DummyProgressView;->m:I

    :cond_5
    sget p1, Lcom/zui/launcher/DummyProgressView;->n:I

    if-gez p1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070612

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/zui/launcher/DummyProgressView;->n:I

    :cond_6
    iget-object p1, p0, Lcom/zui/launcher/DummyProgressView;->h:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_7

    sget p1, Lcom/zui/launcher/DummyProgressView;->l:I

    sget v1, Lcom/zui/launcher/DummyProgressView;->m:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-direct {v1, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/zui/launcher/DummyProgressView;->h:Landroid/graphics/drawable/Drawable;

    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_8

    aget-object p1, p1, v2

    if-nez p1, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/zui/launcher/DummyProgressView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, p1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_9
    sget-object p1, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    if-nez p1, :cond_b

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p1, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object p1, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    sget v1, Lcom/zui/launcher/DummyProgressView;->n:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object p1, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance p1, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p1}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    sget-object v1, Lcom/zui/launcher/DummyProgressView;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    float-to-int p1, v1

    sput p1, Lcom/zui/launcher/DummyProgressView;->o:I

    goto :goto_1

    :cond_a
    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/DummyProgressView;->d:I

    iput-object v3, p0, Lcom/zui/launcher/DummyProgressView;->f:Landroid/graphics/RectF;

    :cond_b
    :goto_1
    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result p1

    if-eqz p1, :cond_c

    const p1, 0x7f1205bc

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_c
    iget-object p1, p0, Lcom/zui/launcher/DummyProgressView;->g:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object p1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/launcher/DummyProgressView;->g:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;->label:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_3

    :cond_e
    iget-object p1, p0, Lcom/zui/launcher/DummyProgressView;->b:Lcom/zui/launcher/LauncherAppWidgetInfo$a;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->f(Lcom/zui/launcher/LauncherAppWidgetInfo$a;)V

    iput-object v3, p0, Lcom/zui/launcher/DummyProgressView;->b:Lcom/zui/launcher/LauncherAppWidgetInfo$a;

    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method
