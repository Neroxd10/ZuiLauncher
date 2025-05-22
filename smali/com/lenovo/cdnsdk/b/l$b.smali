.class final Lcom/lenovo/cdnsdk/b/l$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/cdnsdk/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    instance-of p0, p1, Lcom/lenovo/cdnsdk/b/m;

    if-eqz p0, :cond_1

    instance-of p0, p2, Lcom/lenovo/cdnsdk/b/m;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/lenovo/cdnsdk/b/m;

    check-cast p2, Lcom/lenovo/cdnsdk/b/m;

    iget p0, p1, Lcom/lenovo/cdnsdk/b/m;->a:I

    add-int/lit8 p0, p0, -0x1

    iget v0, p2, Lcom/lenovo/cdnsdk/b/m;->a:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr p0, v0

    if-nez p0, :cond_0

    iget-wide p0, p1, Lcom/lenovo/cdnsdk/b/m;->b:J

    iget-wide v0, p2, Lcom/lenovo/cdnsdk/b/m;->b:J

    sub-long/2addr p0, v0

    long-to-int p0, p0

    :cond_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
