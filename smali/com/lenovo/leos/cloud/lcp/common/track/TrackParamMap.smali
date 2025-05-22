.class public Lcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;->a:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getExtraParam()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;->c:Ljava/util/Map;

    return-object p0
.end method

.method public getParamKey()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;->a:[Ljava/lang/String;

    return-object p0
.end method

.method public getParamValue()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;->b:[Ljava/lang/String;

    return-object p0
.end method

.method public put(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-lez p1, :cond_1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;->a:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aput-object p2, v0, p1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;->b:[Ljava/lang/String;

    aput-object p3, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackParamMap;->c:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
