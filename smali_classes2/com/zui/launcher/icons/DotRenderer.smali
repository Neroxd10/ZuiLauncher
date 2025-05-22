.class public Lcom/zui/launcher/icons/DotRenderer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/icons/DotRenderer$DrawParams;
    }
.end annotation


# instance fields
.field public final MAX_COUNT_DES:Ljava/lang/String;

.field private final a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Bitmap;

.field private final d:F

.field private final e:[F

.field private final f:[F

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/graphics/Path;III)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/zui/launcher/icons/DotRenderer;->b:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/zui/launcher/icons/DotRenderer;->k:Landroid/graphics/Paint;

    const-string p2, "999+"

    iput-object p2, p0, Lcom/zui/launcher/icons/DotRenderer;->MAX_COUNT_DES:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/zui/launcher/icons/R$dimen;->android_badge_size:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    new-instance v2, Lcom/zui/launcher/icons/ShadowGenerator$Builder;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/zui/launcher/icons/ShadowGenerator$Builder;-><init>(IZ)V

    const/16 v4, 0x58

    iput v4, v2, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->ambientShadowAlpha:I

    invoke-virtual {v2, p2}, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->setupBlurForSize(I)Lcom/zui/launcher/icons/ShadowGenerator$Builder;

    move-result-object v4

    invoke-virtual {v4, p2, p2}, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->createPill(II)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/icons/DotRenderer;->c:Landroid/graphics/Bitmap;

    iget v2, v2, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->radius:F

    iput v2, p0, Lcom/zui/launcher/icons/DotRenderer;->a:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p2, v2

    iput p2, p0, Lcom/zui/launcher/icons/DotRenderer;->d:F

    int-to-float p2, p4

    const/high16 p4, -0x40800000    # -1.0f

    invoke-static {p3, p2, p4}, Lcom/zui/launcher/icons/DotRenderer;->a(Landroid/graphics/Path;FF)[F

    move-result-object p4

    iput-object p4, p0, Lcom/zui/launcher/icons/DotRenderer;->f:[F

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p3, p2, p4}, Lcom/zui/launcher/icons/DotRenderer;->a(Landroid/graphics/Path;FF)[F

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/icons/DotRenderer;->e:[F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput p5, p0, Lcom/zui/launcher/icons/DotRenderer;->g:I

    iget-object p3, p0, Lcom/zui/launcher/icons/DotRenderer;->k:Landroid/graphics/Paint;

    int-to-float p4, p6

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p3, p0, Lcom/zui/launcher/icons/DotRenderer;->k:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p3, p0, Lcom/zui/launcher/icons/DotRenderer;->k:Landroid/graphics/Paint;

    sget p4, Lcom/zui/launcher/icons/R$color;->icon_tip_text_color:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p3, p0, Lcom/zui/launcher/icons/DotRenderer;->k:Landroid/graphics/Paint;

    const-string p4, "0"

    invoke-virtual {p3, p4, v3, v1, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/icons/DotRenderer;->i:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/icons/DotRenderer;->h:I

    sget p1, Lcom/zui/launcher/icons/R$dimen;->icon_tip_top:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/icons/DotRenderer;->j:I

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/zui/launcher/icons/DotRenderer;->l:Landroid/util/SparseArray;

    sget p1, Lcom/zui/launcher/icons/R$dimen;->android_badge_offset:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/icons/DotRenderer;->m:I

    return-void
.end method

.method private static a(Landroid/graphics/Path;FF)[F
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    mul-float v1, p2, v0

    add-float/2addr v1, v0

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    const/4 v0, 0x0

    invoke-virtual {v2, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v2, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    sget-object p2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v2, p0, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    const/4 p0, 0x2

    new-array p0, p0, [F

    new-instance p2, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {p2, v2, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, p0, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget p2, p0, v1

    div-float/2addr p2, p1

    aput p2, p0, v1

    const/4 p2, 0x1

    aget v0, p0, p2

    div-float/2addr v0, p1

    aput v0, p0, p2

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/zui/launcher/icons/DotRenderer$DrawParams;ZI)V
    .locals 7

    if-nez p2, :cond_0

    const-string p0, "DotRenderer"

    const-string p1, "Invalid null argument(s) passed in call to draw."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-gtz p4, :cond_1

    return-void

    :cond_1
    const/high16 v0, -0x1000000

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    const/16 p3, 0x3e7

    if-le p4, p3, :cond_2

    const-string p3, "999+"

    goto :goto_0

    :cond_2
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    iget v2, p0, Lcom/zui/launcher/icons/DotRenderer;->g:I

    iget v3, p0, Lcom/zui/launcher/icons/DotRenderer;->h:I

    add-int/lit8 v4, p4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/zui/launcher/icons/DotRenderer;->l:Landroid/util/SparseArray;

    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    new-instance v3, Lcom/zui/launcher/icons/ShadowGenerator$Builder;

    const/16 v4, 0x67

    const/16 v5, 0x5c

    const/16 v6, 0xff

    invoke-static {v6, v6, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/zui/launcher/icons/ShadowGenerator$Builder;-><init>(I)V

    const/16 v4, 0x58

    iput v4, v3, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->ambientShadowAlpha:I

    iget v4, p0, Lcom/zui/launcher/icons/DotRenderer;->g:I

    invoke-virtual {v3, v4}, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->setupBlurForSize(I)Lcom/zui/launcher/icons/ShadowGenerator$Builder;

    move-result-object v3

    iget v4, p0, Lcom/zui/launcher/icons/DotRenderer;->g:I

    invoke-virtual {v3, v2, v4}, Lcom/zui/launcher/icons/ShadowGenerator$Builder;->createPill(II)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/icons/DotRenderer;->l:Landroid/util/SparseArray;

    invoke-virtual {v4, p4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->save(I)I

    iget-object p4, p2, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    iget v4, p4, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    iget p4, p4, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/zui/launcher/icons/DotRenderer;->g:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p4, v2

    int-to-float v2, v4

    int-to-float p4, p4

    invoke-virtual {p1, v2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    iget p2, p2, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p2, p0, Lcom/zui/launcher/icons/DotRenderer;->b:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object p4, p0, Lcom/zui/launcher/icons/DotRenderer;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, p2, p2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget p2, p0, Lcom/zui/launcher/icons/DotRenderer;->i:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object p0, p0, Lcom/zui/launcher/icons/DotRenderer;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, p2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p3, p2, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    iget-boolean p4, p2, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->leftAlign:Z

    iget p4, p3, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/zui/launcher/icons/DotRenderer;->m:I

    sub-int/2addr p4, v2

    int-to-float p4, p4

    iget v3, p0, Lcom/zui/launcher/icons/DotRenderer;->a:F

    sub-float/2addr p4, v3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v2

    int-to-float p3, p3

    add-float/2addr p3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p2, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->leftAlign:Z

    if-eqz v3, :cond_5

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/zui/launcher/icons/DotRenderer;->d:F

    add-float/2addr v4, p4

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_1

    :cond_5
    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/zui/launcher/icons/DotRenderer;->d:F

    sub-float v4, p4, v4

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_1
    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, p0, Lcom/zui/launcher/icons/DotRenderer;->d:F

    add-float/2addr v4, p3

    sub-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr p4, v3

    add-float/2addr p3, v2

    invoke-virtual {p1, p4, p3}, Landroid/graphics/Canvas;->translate(FF)V

    iget p3, p2, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p3, p0, Lcom/zui/launcher/icons/DotRenderer;->b:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/zui/launcher/icons/DotRenderer;->c:Landroid/graphics/Bitmap;

    iget p4, p0, Lcom/zui/launcher/icons/DotRenderer;->d:F

    iget-object v0, p0, Lcom/zui/launcher/icons/DotRenderer;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/zui/launcher/icons/DotRenderer;->b:Landroid/graphics/Paint;

    iget p2, p2, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->color:I

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget p2, p0, Lcom/zui/launcher/icons/DotRenderer;->a:F

    iget-object p0, p0, Lcom/zui/launcher/icons/DotRenderer;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, p2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getLeftDotPosition()[F
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/DotRenderer;->f:[F

    return-object p0
.end method

.method public getRightDotPosition()[F
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/DotRenderer;->e:[F

    return-object p0
.end method
