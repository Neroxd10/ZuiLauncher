.class Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse$BookmarkChecksumVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->o(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$e;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(FLjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$e;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->f(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao;

    move-result-object p1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$e;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->i(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;)Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao;->delete(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
