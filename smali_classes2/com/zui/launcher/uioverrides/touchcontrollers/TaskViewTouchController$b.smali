.class Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:[F

.field b:[F


# direct methods
.method private constructor <init>(Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    new-array v0, p1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController$b;->a:[F

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController$b;->b:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f6e147b    # 0.93f
        0x3f733333    # 0.95f
        0x3f7851ec    # 0.97f
        0x3f7ae148    # 0.98f
        0x3f7d70a4    # 0.99f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x3e4ccccd    # 0.2f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController$b;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController$b;->a:[F

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController$b;->a:[F

    aget v4, v4, v3

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    sub-float v2, v4, v2

    iget-object v5, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController$b;->b:[F

    aget v5, v5, v3

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v2

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController$b;->b:[F

    aget p0, p0, v3

    mul-float/2addr p1, p0

    add-float/2addr v1, p1

    :cond_1
    return v1
.end method
