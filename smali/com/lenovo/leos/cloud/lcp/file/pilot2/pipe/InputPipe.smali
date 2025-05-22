.class public interface abstract Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract contentLength()J
.end method

.method public abstract contentType()Ljava/lang/String;
.end method

.method public abstract isRepeatable()Z
.end method

.method public abstract loadOdometer()Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;
.end method

.method public abstract persistOdometer(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)V
.end method

.method public abstract read([BJI)I
.end method

.method public abstract removeOdometer()V
.end method
