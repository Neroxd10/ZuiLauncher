.class Lcom/zui/launcher/touch/SingleAxisSwipeDetector$b;
.super Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/touch/SingleAxisSwipeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/graphics/PointF;)F
    .locals 0

    iget p0, p1, Landroid/graphics/PointF;->x:F

    return p0
.end method

.method b(Landroid/graphics/PointF;)F
    .locals 0

    iget p0, p1, Landroid/graphics/PointF;->y:F

    return p0
.end method

.method c(F)Z
    .locals 0

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method d(F)Z
    .locals 0

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "HORIZONTAL"

    return-object p0
.end method
