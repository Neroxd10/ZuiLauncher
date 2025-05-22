.class Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse$BookmarkSyncVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->t(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;)V
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

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$c;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(FLcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$c;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->h(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;)I

    return-void
.end method
