.class public interface abstract Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract isRegister(Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;)Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract onScrollTextViewObserverData(ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract refreshWidgetSearchData(I)V
.end method
