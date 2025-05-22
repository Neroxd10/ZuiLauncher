.class public Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;->c:J

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;->c:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;->a:Ljava/lang/String;

    return-object p0
.end method
