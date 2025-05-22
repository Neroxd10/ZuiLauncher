.class public interface abstract Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract clearSearchResult()V
.end method

.method public abstract onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation
.end method
