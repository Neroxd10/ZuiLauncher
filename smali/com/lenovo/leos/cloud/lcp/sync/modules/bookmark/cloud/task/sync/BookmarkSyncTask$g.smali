.class Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse$BookmarkChecksumVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->j(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$g;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(FLjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$g;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->d(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;->addBacked(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;)V

    return-void
.end method
