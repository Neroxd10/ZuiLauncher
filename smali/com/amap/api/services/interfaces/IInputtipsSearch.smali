.class public interface abstract Lcom/amap/api/services/interfaces/IInputtipsSearch;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getQuery()Lcom/amap/api/services/help/InputtipsQuery;
.end method

.method public abstract requestInputtips()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/services/help/Tip;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestInputtips(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestInputtips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestInputtipsAsyn()V
.end method

.method public abstract setInputtipsListener(Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V
.end method

.method public abstract setQuery(Lcom/amap/api/services/help/InputtipsQuery;)V
.end method
