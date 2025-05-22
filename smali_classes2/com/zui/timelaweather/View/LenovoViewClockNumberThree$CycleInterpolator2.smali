.class public Lcom/zui/timelaweather/View/LenovoViewClockNumberThree$CycleInterpolator2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CycleInterpolator2"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;


# direct methods
.method public constructor <init>(Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree$CycleInterpolator2;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    float-to-double v0, p1

    const-wide v2, 0x3fd997f62b6ae7d5L    # 0.3999

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const p0, -0x3e91e76d    # -14.881f

    const v0, 0x3e916873    # 0.284f

    sub-float/2addr p1, v0

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    const p1, 0x3f99999a    # 1.2f

    add-float/2addr p0, p1

    return p0

    :cond_0
    const-wide p0, 0x3faeb851e0000000L    # 0.05999999865889549

    const-wide v2, 0x4024f1991864b062L    # 10.47187114934076

    mul-double/2addr v0, v2

    const-wide v2, 0x401d523486a74a37L    # 7.330278495750966

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method
