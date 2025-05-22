.class public Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:J

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field c:J


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->a:J

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->b:Ljava/util/Map;

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->a:J

    return-void
.end method

.method public static start()Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->c:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->a:J

    return-wide v0
.end method

.method public record(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->b:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public span(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->a:J

    sub-long/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public span(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->b:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public stop()Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->c:J

    return-object p0
.end method

.method public wholeSpan()J
    .locals 4

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->c:J

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
