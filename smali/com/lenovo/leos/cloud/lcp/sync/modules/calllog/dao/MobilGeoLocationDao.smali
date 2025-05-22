.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/MobilGeoLocationDao;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract add(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteAll()V
.end method

.method public abstract queryByMobile(Ljava/lang/String;)Ljava/lang/String;
.end method
