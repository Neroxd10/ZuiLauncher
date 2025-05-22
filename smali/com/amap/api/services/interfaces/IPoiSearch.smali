.class public interface abstract Lcom/amap/api/services/interfaces/IPoiSearch;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getQuery()Lcom/amap/api/services/poisearch/PoiSearch$Query;
.end method

.method public abstract searchPOI()Lcom/amap/api/services/poisearch/PoiResult;
.end method

.method public abstract searchPOIAsyn()V
.end method

.method public abstract searchPOIId(Ljava/lang/String;)Lcom/amap/api/services/core/PoiItem;
.end method

.method public abstract searchPOIIdAsyn(Ljava/lang/String;)V
.end method

.method public abstract setBound(Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V
.end method

.method public abstract setLanguage(Ljava/lang/String;)V
.end method

.method public abstract setOnPoiSearchListener(Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;)V
.end method

.method public abstract setQuery(Lcom/amap/api/services/poisearch/PoiSearch$Query;)V
.end method
