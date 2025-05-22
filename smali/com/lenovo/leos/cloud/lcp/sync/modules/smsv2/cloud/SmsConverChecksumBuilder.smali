.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/ChecksumBuilder;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    return-object p0
.end method

.method private d(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Ljava/util/HashMap;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;",
            "Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v9, p0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->h()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    const/4 v1, 0x0

    invoke-interface {v0, v10, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->getSmsSize(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    new-instance v14, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$a;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v4, v12

    move-object/from16 v5, p1

    move-object v6, v13

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Ljava/util/Set;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;I)V

    iget-object v0, v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    const/4 v3, 0x0

    const-string v4, " date DESC,body "

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, v14

    move-object v2, v10

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->traverseSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)Z

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->i(Ljava/util/List;)V

    :cond_0
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->j(Ljava/util/List;)V

    :cond_1
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->f(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Ljava/util/Set;)V

    return-void
.end method

.method private e(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "all"

    invoke-virtual {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;->addType(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p0, "phone"

    invoke-virtual {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;->addType(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;->addPhotoList(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private f(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->g(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->e(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method private g(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const-string p0, "all"

    invoke-virtual {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;->addType(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;->addType(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;->addPhotoList(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->d:Z

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->buildSmsAddressWhere(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->buildSmsConversWhere(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private i(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$b;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private j(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$c;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$c;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private k()Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;

    const-string v1, "-1"

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public buildChecksumRequest(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;
    .locals 3

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->k()Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-boolean v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->d:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/IncrementalBackupManage;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/IncrementalBackupManage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/IncrementalBackupManage;->checkIncremental()V

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/IncrementalBackupManage;->getBackedUpSmsUids()Ljava/util/HashMap;

    move-result-object v1

    :cond_0
    invoke-direct {p0, v0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->d(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public getCacheSmsKey2Locks()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->e:Ljava/util/Map;

    return-object p0
.end method

.method public getExcludeIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->f:Ljava/util/List;

    return-object p0
.end method

.method public isRestore()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->d:Z

    return p0
.end method

.method public setCacheSmsKey2Locks(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->e:Ljava/util/Map;

    return-void
.end method

.method public setRestore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->d:Z

    return-void
.end method

.method public setSmsConversation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->c:Ljava/util/List;

    return-void
.end method
