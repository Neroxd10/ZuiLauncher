.class public Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->e:J

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->a:Ljava/lang/String;

    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->b:I

    iput p3, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->c:I

    iput p4, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->d:I

    iput-object p5, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCost()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->c:I

    return p0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->d:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResultCode()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->b:I

    return p0
.end method

.method public getRootCauseMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->e:J

    return-wide v0
.end method

.method public getUrlStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->f:Ljava/lang/String;

    return-object p0
.end method
