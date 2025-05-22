.class public interface abstract Lcom/zui/launcher/widget/picker/search/SearchModeListener;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract enterSearchMode()V
.end method

.method public abstract exitSearchMode()V
.end method

.method public abstract onSearchResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract prepareSearchMode()V
.end method
