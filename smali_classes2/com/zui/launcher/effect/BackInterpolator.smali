.class public Lcom/zui/launcher/effect/BackInterpolator;
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

.field protected param_s:F


# direct methods
.method public constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/zui/launcher/effect/BackInterpolator;->a:B

    const v0, 0x3fd9cd60

    iput v0, p0, Lcom/zui/launcher/effect/BackInterpolator;->param_s:F

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    iput-byte p1, p0, Lcom/zui/launcher/effect/BackInterpolator;->a:B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The mode must be 0, 1 or 2. See the doc"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(F)F
    .locals 5

    iget-byte v0, p0, Lcom/zui/launcher/effect/BackInterpolator;->a:B

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return p1

    :cond_0
    iget p0, p0, Lcom/zui/launcher/effect/BackInterpolator;->param_s:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    cmpg-float v2, p1, v1

    const v3, 0x3fc33333    # 1.525f

    const/high16 v4, 0x3f000000    # 0.5f

    if-gez v2, :cond_1

    mul-float v0, p1, p1

    mul-float/2addr p0, v3

    add-float/2addr v1, p0

    mul-float/2addr v1, p1

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v4

    return v0

    :cond_1
    sub-float/2addr p1, v0

    mul-float v2, p1, p1

    mul-float/2addr p0, v3

    add-float/2addr v1, p0

    mul-float/2addr v1, p1

    add-float/2addr v1, p0

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    mul-float/2addr v2, v4

    return v2

    :cond_2
    iget p0, p0, Lcom/zui/launcher/effect/BackInterpolator;->param_s:F

    sub-float/2addr p1, v1

    mul-float v0, p1, p1

    add-float v2, p0, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, p0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    return v0

    :cond_3
    iget p0, p0, Lcom/zui/launcher/effect/BackInterpolator;->param_s:F

    mul-float v0, p1, p1

    add-float/2addr v1, p0

    mul-float/2addr v1, p1

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/effect/BackInterpolator;->a(F)F

    move-result p0

    return p0
.end method

.method public s(F)Lcom/zui/launcher/effect/BackInterpolator;
    .locals 0

    iput p1, p0, Lcom/zui/launcher/effect/BackInterpolator;->param_s:F

    return-object p0
.end method
