.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public static a(II)F
    .locals 2

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    if-gtz p1, :cond_0

    return v0

    :cond_0
    if-lez p0, :cond_1

    div-int/lit8 p0, p0, 0x64

    add-int/lit8 p0, p0, 0x1

    int-to-float p0, p0

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    if-lez p1, :cond_2

    int-to-float p1, p1

    const v0, 0x400ccccd    # 2.2f

    mul-float/2addr v0, p1

    :cond_2
    const/high16 p1, 0x41000000    # 8.0f

    add-float/2addr p0, p1

    add-float/2addr p0, v0

    return p0
.end method
