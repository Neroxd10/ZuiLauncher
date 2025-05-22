.class final Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[J>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;)V

    return-void
.end method


# virtual methods
.method public a([J[J)I
    .locals 2

    const/4 p0, 0x0

    aget-wide v0, p1, p0

    aget-wide p0, p2, p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;->a([J[J)I

    move-result p0

    return p0
.end method
