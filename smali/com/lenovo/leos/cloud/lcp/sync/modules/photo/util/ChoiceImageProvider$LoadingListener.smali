.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$LoadingListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadingListener"
.end annotation


# virtual methods
.method public abstract onLoadingPart(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;)V"
        }
    .end annotation
.end method
