.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source ""


# static fields
.field public static final BOOKMARK_VERSION:Ljava/lang/String; = "BOOKMARK_VERSION"


# instance fields
.field private f:I

.field private g:I

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->BOOKMARK:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->h:Ljava/util/Map;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/GreenTeaBookmarkImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/GreenTeaBookmarkImpl;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao;

    return-void
.end method

.method static synthetic d(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->h:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao;

    return-object p0
.end method

.method static synthetic g(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;)I
    .locals 2

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->g:I

    return v0
.end method

.method static synthetic h(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;)I
    .locals 2

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->f:I

    return v0
.end method

.method static synthetic i(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private j(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$g;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$g;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;)V

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;->hasCAdd()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "c_add"

    invoke-virtual {p2, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;->traverse(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse$BookmarkChecksumVisitor;)V

    :cond_0
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;->hasCDiff()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "c_diff"

    invoke-virtual {p2, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;->traverse(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse$BookmarkChecksumVisitor;)V

    :cond_1
    return-void
.end method

.method private k(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)V
    .locals 1

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;->hasCDel()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$d;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$d;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;)V

    const-string p0, "c_del"

    invoke-virtual {p2, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;->traverse(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse$BookmarkChecksumVisitor;)V

    :cond_0
    return-void
.end method

.method private l(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$f;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$f;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;)V

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;->hasSAdd()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "s_add"

    invoke-virtual {p2, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;->traverse(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse$BookmarkChecksumVisitor;)V

    :cond_0
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;->hasSDiff()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "s_diff"

    invoke-virtual {p2, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;->traverse(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse$BookmarkChecksumVisitor;)V

    :cond_1
    return-void
.end method

.method private m()Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumRequest;
    .locals 4

    const-string v0, "BOOKMARK_VERSION"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumRequest;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumRequest;-><init>(I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$a;

    invoke-direct {v3, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumRequest;)V

    invoke-interface {v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao;->traverseAll(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao$Visitor;)V

    return-object v1
.end method

.method private n(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->j(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)V

    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->l(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->o(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)V

    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->k(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)V

    return-object v1
.end method

.method private o(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)V
    .locals 1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;->hasSDel()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$e;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$e;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;)V

    const-string p0, "s_del"

    invoke-virtual {p1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;->traverse(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse$BookmarkChecksumVisitor;)V

    :cond_0
    return-void
.end method

.method private p(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->n(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->r(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;

    move-result-object p0

    return-object p0
.end method

.method private q(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    const-string v1, "v1/bookmark/checksum?ys=true"

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/util/BookmarkUtil;->getBookmarkURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumRequest;->toBytes()[B

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private r(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    const-string v1, "v1/bookmark/sync?ys=true"

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/util/BookmarkUtil;->getBookmarkURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;->toBytes()[B

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private s(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->p(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;->getResult()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x2

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->t(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;)V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->u(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;)V

    :goto_0
    return-void
.end method

.method private t(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;)V
    .locals 1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;->hasBacked()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$c;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$c;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;)V

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;->traverseBacked(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse$BookmarkSyncVisitor;)V

    :cond_0
    return-void
.end method

.method private u(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;)V
    .locals 1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;->hasRevert()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$b;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;)V

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse;->traverseRevert(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncResponse$BookmarkSyncVisitor;)V

    :cond_0
    return-void
.end method

.method private v()Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->m()Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->q(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected startTask()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/dao/BookmarkDao;->getLocalCount(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x6e

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->v()Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/sync/BookmarkSyncTask;->s(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkChecksumResponse;)V

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method
