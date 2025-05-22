.class public interface abstract Lcom/zui/launcher/search/SearchAlgorithm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cancel(Z)V
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public abstract doSearch(Ljava/lang/String;Lcom/zui/launcher/search/SearchCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/search/SearchCallback<",
            "TT;>;)V"
        }
    .end annotation
.end method
