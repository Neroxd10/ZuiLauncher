.class public interface abstract Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/category/proto/ConstProtoValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CategoryHttpRequestCallback"
.end annotation


# virtual methods
.method public abstract getRequestData()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onFailure(Ljava/lang/String;)V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
