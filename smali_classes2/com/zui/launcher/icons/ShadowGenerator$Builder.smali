.class public Lcom/zui/launcher/icons/ShadowGenerator$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/icons/ShadowGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field public ambientShadowAlpha:I

.field public final bounds:Landroid/graphics/RectF;

.field public final color:I

.field public keyShadowAlpha:I

.field public keyShadowDistance:F

.field public radius:F

.field public shadowBlur:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/icons/ShadowGenerator$Builder;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    const/4 v0, 0x7

    iput v0, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->ambientShadowAlpha:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->keyShadowAlpha:I

    iput p1, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->color:I

    iput-boolean p2, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->a:Z

    return-void
.end method


# virtual methods
.method public createPill(II)Landroid/graphics/Bitmap;
    .locals 2

    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->createPill(IIF)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public createPill(IIF)Landroid/graphics/Bitmap;
    .locals 4

    iput p3, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->radius:F

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float v0, p1, p3

    iget v1, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->shadowBlur:F

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->radius:F

    iget v3, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->shadowBlur:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    int-to-float p2, p2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    int-to-float v2, v1

    sub-float v0, v2, v0

    div-float/2addr p2, p3

    sub-float/2addr v2, p2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    mul-int/lit8 v1, v1, 0x2

    new-instance p1, Lcom/zui/launcher/icons/w;

    invoke-direct {p1, p0}, Lcom/zui/launcher/icons/w;-><init>(Lcom/zui/launcher/icons/ShadowGenerator$Builder;)V

    invoke-static {v1, v1, p1}, Lcom/zui/launcher/icons/BitmapRenderer;->createHardwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public drawShadow(Landroid/graphics/Canvas;)V
    .locals 6

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iget v1, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v1, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->a:Z

    const/high16 v2, -0x1000000

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->shadowBlur:F

    iget v3, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    iget v4, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->keyShadowAlpha:I

    invoke-static {v2, v4}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->radius:F

    invoke-virtual {p1, v1, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->shadowBlur:F

    iget v3, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->ambientShadowAlpha:I

    invoke-static {v2, v3}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v3

    invoke-virtual {v0, v1, v5, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->radius:F

    invoke-virtual {p1, v1, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->color:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v3, 0xff

    if-ge v1, v3, :cond_1

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->radius:F

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget v1, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget p0, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->radius:F

    invoke-virtual {p1, v1, p0, p0, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setupBlurForSize(I)Lcom/zui/launcher/icons/ShadowGenerator$Builder;
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->a:Z

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x41c00000    # 24.0f

    div-float v0, p1, v0

    iput v0, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->shadowBlur:F

    const/high16 v0, 0x41800000    # 16.0f

    div-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->shadowBlur:F

    :goto_0
    iput p1, p0, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    return-object p0
.end method
