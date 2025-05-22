.class public Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPilotFuture()Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    return-object p0
.end method

.method public isCancel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;->a:Z

    return p0
.end method

.method public setCancel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;->a:Z

    return-void
.end method

.method public setPilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CancelEntity [isCancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pilotFuture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
