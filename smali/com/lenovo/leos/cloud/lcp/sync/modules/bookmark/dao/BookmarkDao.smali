.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao$Visitor;
    }
.end annotation


# virtual methods
.method public abstract create(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;)Ljava/lang/String;
.end method

.method public abstract delete(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract getLocalCount(Landroid/content/Context;)I
.end method

.method public abstract traverseAll(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao$Visitor;)V
.end method

.method public abstract update(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;)V
.end method
