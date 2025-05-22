.class public interface abstract Lcom/zui/launcher/networksdk/api/JsonRequestCallback;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getParams()Ljava/util/HashMap;
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

.method public abstract onFailue(Ljava/lang/String;[Lorg/apache/http/Header;)V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onStart(Ljava/lang/String;)V
.end method

.method public abstract onSucess(Lorg/json/JSONObject;Lorg/json/JSONArray;[Lorg/apache/http/Header;)V
.end method
