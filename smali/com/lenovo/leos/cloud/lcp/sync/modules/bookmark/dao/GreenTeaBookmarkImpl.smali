.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/GreenTeaBookmarkImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getLocalCount(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public traverseAll(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao$Visitor;)V
    .locals 0

    return-void
.end method

.method public update(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;)V
    .locals 0

    return-void
.end method
