.class public Lcom/zui/launcher/icons/ShadowGenerator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/icons/ShadowGenerator$Builder;
    }
.end annotation


# static fields
.field public static final BLUR_FACTOR:F = 0.03125f

.field public static final ENABLE_SHADOWS:Z = true

.field public static final KEY_SHADOW_DISTANCE:F = 0.020833334f


# instance fields
.field private final a:I

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/BlurMaskFilter;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/icons/ShadowGenerator;->a:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/zui/launcher/icons/ShadowGenerator;->b:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/zui/launcher/icons/ShadowGenerator;->c:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/BlurMaskFilter;

    iget v0, p0, Lcom/zui/launcher/icons/ShadowGenerator;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x3d000000    # 0.03125f

    mul-float/2addr v0, v1

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p1, v0, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object p1, p0, Lcom/zui/launcher/icons/ShadowGenerator;->d:Landroid/graphics/BlurMaskFilter;

    return-void
.end method

.method public static getScaleForBounds(Landroid/graphics/RectF;)F
    .locals 3

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3d000000    # 0.03125f

    cmpg-float v1, v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    if-gez v1, :cond_0

    const/high16 v1, 0x3ef00000    # 0.46875f

    sub-float v0, v2, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    const v0, 0x3d555556

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const v0, 0x3ee55555

    sub-float/2addr v2, p0

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :cond_1
    return v1
.end method


# virtual methods
.method public declared-synchronized recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/BlurMaskFilter;IILandroid/graphics/Canvas;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/zui/launcher/icons/ShadowGenerator;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object p2, p0, Lcom/zui/launcher/icons/ShadowGenerator;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v1, p0, Lcom/zui/launcher/icons/ShadowGenerator;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p3, 0x0

    aget v1, v0, p3

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zui/launcher/icons/ShadowGenerator;->c:Landroid/graphics/Paint;

    invoke-virtual {p5, p2, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/zui/launcher/icons/ShadowGenerator;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    aget p3, v0, p3

    int-to-float p3, p3

    aget p4, v0, v2

    int-to-float p4, p4

    const v0, 0x3caaaaab

    iget v1, p0, Lcom/zui/launcher/icons/ShadowGenerator;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr p4, v1

    iget-object v0, p0, Lcom/zui/launcher/icons/ShadowGenerator;->c:Landroid/graphics/Paint;

    invoke-virtual {p5, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/zui/launcher/icons/ShadowGenerator;->c:Landroid/graphics/Paint;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/zui/launcher/icons/ShadowGenerator;->c:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p5, p1, p3, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/zui/launcher/icons/ShadowGenerator;->d:Landroid/graphics/BlurMaskFilter;

    const/4 v3, 0x7

    const/16 v4, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/icons/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/BlurMaskFilter;IILandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
