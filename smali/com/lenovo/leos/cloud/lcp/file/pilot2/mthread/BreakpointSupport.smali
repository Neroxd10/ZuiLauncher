.class public interface abstract Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Odometer::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract loadOdometer()Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOdometer;"
        }
    .end annotation
.end method

.method public abstract persistOdometer(Ljava/io/Serializable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOdometer;)V"
        }
    .end annotation
.end method

.method public abstract removeOdometer()V
.end method
