.class public Lcom/zui/launcher/LogAccelerateInterpolator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field a:I

.field b:I

.field final c:F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/LogAccelerateInterpolator;->a:I

    iput p2, p0, Lcom/zui/launcher/LogAccelerateInterpolator;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1, p2}, Lcom/zui/launcher/LogAccelerateInterpolator;->a(FII)F

    move-result p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/LogAccelerateInterpolator;->c:F

    return-void
.end method

.method static a(FII)F
    .locals 4

    int-to-double v0, p1

    neg-float p1, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    int-to-float p2, p2

    mul-float/2addr p2, p0

    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sub-float p1, v0, p1

    iget v1, p0, Lcom/zui/launcher/LogAccelerateInterpolator;->a:I

    iget v2, p0, Lcom/zui/launcher/LogAccelerateInterpolator;->b:I

    invoke-static {p1, v1, v2}, Lcom/zui/launcher/LogAccelerateInterpolator;->a(FII)F

    move-result p1

    iget p0, p0, Lcom/zui/launcher/LogAccelerateInterpolator;->c:F

    mul-float/2addr p1, p0

    sub-float/2addr v0, p1

    :goto_0
    return v0
.end method
