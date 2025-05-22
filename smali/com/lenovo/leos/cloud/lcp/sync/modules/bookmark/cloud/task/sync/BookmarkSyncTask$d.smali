.class Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse$BookmarkChecksumVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->k(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;)V
    .locals 0

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$d;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(FLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$d;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;

    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;->addDelete(Ljava/lang/String;)V

    return-void
.end method
