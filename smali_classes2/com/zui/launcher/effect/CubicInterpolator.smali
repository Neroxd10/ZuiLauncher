.class public Lcom/zui/launcher/effect/CubicInterpolator;
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


# direct methods
.method public constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/zui/launcher/effect/CubicInterpolator;->a:B

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    iput-byte p1, p0, Lcom/zui/launcher/effect/CubicInterpolator;->a:B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The mode must be 0, 1 or 2. See the doc"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(F)F
    .locals 2

    iget-byte p0, p0, Lcom/zui/launcher/effect/CubicInterpolator;->a:B

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return p1

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    cmpg-float v0, p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    if-gez v0, :cond_1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    return v1

    :cond_1
    sub-float/2addr p1, p0

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    mul-float/2addr v0, v1

    return v0

    :cond_2
    sub-float/2addr p1, v1

    mul-float p0, p1, p1

    mul-float/2addr p0, p1

    add-float/2addr p0, v1

    return p0

    :cond_3
    mul-float p0, p1, p1

    mul-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/effect/CubicInterpolator;->a(F)F

    move-result p0

    return p0
.end method
