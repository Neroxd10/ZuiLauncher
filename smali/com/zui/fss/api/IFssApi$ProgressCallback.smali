.class public interface abstract Lcom/zui/fss/api/IFssApi$ProgressCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/fss/api/IFssApi$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/fss/api/IFssApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressCallback"
.end annotation


# virtual methods
.method public abstract onProgress(Ljava/lang/String;JJ)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Lcom/zui/fss/api/FileMeta;)V
.end method
