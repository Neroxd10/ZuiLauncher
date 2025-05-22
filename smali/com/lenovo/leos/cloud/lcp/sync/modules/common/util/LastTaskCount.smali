.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/LastTaskCount;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:J


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/LastTaskCount;->a:I

    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/LastTaskCount;->b:I

    iput-wide p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/LastTaskCount;->c:J

    return-void
.end method


# virtual methods
.method public getFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/LastTaskCount;->c:J

    return-wide v0
.end method

.method public getSuccessCount()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/LastTaskCount;->b:I

    return p0
.end method

.method public getTotalCount()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/LastTaskCount;->a:I

    return p0
.end method
