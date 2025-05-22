.class public interface abstract Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract cancel(Z)V
.end method

.method public abstract get()Ljava/lang/String;
.end method

.method public abstract getTaskUrl()Ljava/lang/String;
.end method

.method public abstract getThreadId()Ljava/lang/Long;
.end method

.method public abstract isDone()Z
.end method
