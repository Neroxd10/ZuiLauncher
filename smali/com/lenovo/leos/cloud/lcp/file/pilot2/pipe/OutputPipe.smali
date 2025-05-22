.class public interface abstract Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Target:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract close()Z
.end method

.method public abstract contentLength()J
.end method

.method public abstract flush()V
.end method

.method public abstract loadOdometer(I)Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;
.end method

.method public abstract target()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTarget;"
        }
    .end annotation
.end method

.method public abstract write([BJI)V
.end method
