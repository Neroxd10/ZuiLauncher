.class public Lzui/view/animation/ElasticInterpolator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final IN:B = 0x0t

.field public static final INOUT:B = 0x2t

.field public static final OUT:B = 0x1t


# instance fields
.field a:B

.field protected param_a:F

.field protected param_p:F

.field protected setA:Z

.field protected setP:Z


# direct methods
.method public constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lzui/view/animation/ElasticInterpolator;->a:B

    iput-boolean v0, p0, Lzui/view/animation/ElasticInterpolator;->setA:Z

    iput-boolean v0, p0, Lzui/view/animation/ElasticInterpolator;->setP:Z

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    iput-byte p1, p0, Lzui/view/animation/ElasticInterpolator;->a:B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The mode must be 0, 1 or 2. See the doc"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(F)F
    .locals 13

    iget v0, p0, Lzui/view/animation/ElasticInterpolator;->param_a:F

    iget v1, p0, Lzui/view/animation/ElasticInterpolator;->param_p:F

    iget-byte v2, p0, Lzui/view/animation/ElasticInterpolator;->a:B

    const/high16 v3, 0x41200000    # 10.0f

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x40800000    # 4.0f

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v8, 0x0

    const v9, 0x40c90fdb

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v2, :cond_d

    const/4 v11, 0x1

    const/high16 v12, -0x3ee00000    # -10.0f

    if-eq v2, v11, :cond_7

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    return p1

    :cond_0
    cmpl-float v2, p1, v8

    if-nez v2, :cond_1

    return v8

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    return v10

    :cond_2
    iget-boolean v2, p0, Lzui/view/animation/ElasticInterpolator;->setP:Z

    if-nez v2, :cond_3

    const v1, 0x3ee66667    # 0.45000002f

    :cond_3
    iget-boolean p0, p0, Lzui/view/animation/ElasticInterpolator;->setA:Z

    if-eqz p0, :cond_5

    cmpg-float p0, v0, v10

    if-gez p0, :cond_4

    goto :goto_0

    :cond_4
    div-float p0, v1, v9

    div-float v2, v10, v0

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float/2addr p0, v2

    goto :goto_1

    :cond_5
    :goto_0
    div-float p0, v1, v5

    move v0, v10

    :goto_1
    cmpg-float v2, p1, v10

    if-gez v2, :cond_6

    const/high16 v2, -0x41000000    # -0.5f

    sub-float/2addr p1, v10

    mul-float/2addr v3, p1

    float-to-double v3, v3

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v0, v3

    sub-float/2addr p1, p0

    mul-float/2addr p1, v9

    div-float/2addr p1, v1

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, v2

    return v0

    :cond_6
    sub-float/2addr p1, v10

    mul-float/2addr v12, p1

    float-to-double v2, v12

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float/2addr p1, p0

    mul-float/2addr p1, v9

    div-float/2addr p1, v1

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    add-float/2addr v0, v10

    return v0

    :cond_7
    cmpl-float v2, p1, v8

    if-nez v2, :cond_8

    return v8

    :cond_8
    cmpl-float v2, p1, v10

    if-nez v2, :cond_9

    return v10

    :cond_9
    iget-boolean v2, p0, Lzui/view/animation/ElasticInterpolator;->setP:Z

    if-nez v2, :cond_a

    move v1, v4

    :cond_a
    iget-boolean p0, p0, Lzui/view/animation/ElasticInterpolator;->setA:Z

    if-eqz p0, :cond_c

    cmpg-float p0, v0, v10

    if-gez p0, :cond_b

    goto :goto_2

    :cond_b
    div-float p0, v1, v9

    div-float v2, v10, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr p0, v2

    goto :goto_3

    :cond_c
    :goto_2
    div-float p0, v1, v5

    move v0, v10

    :goto_3
    mul-float/2addr v12, p1

    float-to-double v2, v12

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float/2addr p1, p0

    mul-float/2addr p1, v9

    div-float/2addr p1, v1

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, v10

    return v0

    :cond_d
    cmpl-float v2, p1, v8

    if-nez v2, :cond_e

    return v8

    :cond_e
    cmpl-float v2, p1, v10

    if-nez v2, :cond_f

    return v10

    :cond_f
    iget-boolean v2, p0, Lzui/view/animation/ElasticInterpolator;->setP:Z

    if-nez v2, :cond_10

    move v1, v4

    :cond_10
    iget-boolean p0, p0, Lzui/view/animation/ElasticInterpolator;->setA:Z

    if-eqz p0, :cond_12

    cmpg-float p0, v0, v10

    if-gez p0, :cond_11

    goto :goto_4

    :cond_11
    div-float p0, v1, v9

    div-float v2, v10, v0

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float/2addr p0, v2

    goto :goto_5

    :cond_12
    :goto_4
    div-float p0, v1, v5

    move v0, v10

    :goto_5
    sub-float/2addr p1, v10

    mul-float/2addr v3, p1

    float-to-double v2, v3

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float/2addr p1, p0

    mul-float/2addr p1, v9

    div-float/2addr p1, v1

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr v0, p0

    neg-float p0, v0

    return p0
.end method


# virtual methods
.method public a(F)Lzui/view/animation/ElasticInterpolator;
    .locals 0

    iput p1, p0, Lzui/view/animation/ElasticInterpolator;->param_a:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lzui/view/animation/ElasticInterpolator;->setA:Z

    return-object p0
.end method

.method public getInterpolation(F)F
    .locals 0

    invoke-direct {p0, p1}, Lzui/view/animation/ElasticInterpolator;->b(F)F

    move-result p0

    return p0
.end method

.method public p(F)Lzui/view/animation/ElasticInterpolator;
    .locals 0

    iput p1, p0, Lzui/view/animation/ElasticInterpolator;->param_p:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lzui/view/animation/ElasticInterpolator;->setP:Z

    return-object p0
.end method
