.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManager;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;->d(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;)Z

    move-result p0

    return p0
.end method

.method private c(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;)Z
    .locals 0

    if-eqz p1, :cond_1

    iget p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opAdd:I

    if-nez p0, :cond_0

    iget p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opUpdate:I

    if-nez p0, :cond_0

    iget p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opDelete:I

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private d(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;)Z
    .locals 0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    iget p1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->buidChecksum(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;

    move-result-object p0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;->allContactChecksumObjectMap:Ljava/util/Map;

    iget p1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactChecksumMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iget p2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private e(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;
    .locals 10

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;

    invoke-direct {v6, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    invoke-direct {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;-><init>()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->containsContactSid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getClonedContactData(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->keyMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move-object v4, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;Ljava/lang/String;Ljava/util/Set;Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-interface {v6, v9, p0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseRawContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V

    iget p0, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opDelete:I

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opDelete:I

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryLocalContactNumber()I

    move-result p0

    if-gez p0, :cond_3

    const/4 p0, 0x0

    :cond_3
    iput p0, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opAdd:I

    :goto_2
    return-object v7
.end method


# virtual methods
.method public checkBackup()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;
    .locals 8

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;-><init>()V

    const-string v3, "CONTACT_LAST_SYNC_USER"

    const-string v4, "-1"

    invoke-static {v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v4, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;->backuped:Z

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->containsContactSid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getClonedContactData(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->keyMap()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$a;

    invoke-direct {v6, p0, v2, v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;Ljava/lang/String;Ljava/util/Set;)V

    const/4 p0, 0x0

    invoke-interface {v1, v6, p0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseRawContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V

    iget p0, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opDelete:I

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    add-int/2addr p0, v0

    iput p0, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opDelete:I

    goto :goto_2

    :cond_3
    :goto_1
    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryLocalContactNumber()I

    move-result p0

    if-gez p0, :cond_4

    move p0, v5

    :cond_4
    iput p0, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opAdd:I

    :goto_2
    iget p0, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opAdd:I

    if-nez p0, :cond_5

    iget p0, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opUpdate:I

    if-nez p0, :cond_5

    iget p0, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/TaskResult;->opDelete:I

    if-eqz p0, :cond_7

    :cond_5
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactUtil;->getServerVersion()Ljava/lang/Long;

    move-result-object p0

    const-wide/16 v0, -0x2

    const-string v3, "CONTACT_AUTO_SYNC_LAST_LOCAL_VERSION"

    invoke-static {v3, v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long p0, v6, v0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    iput-boolean v4, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;->sameVersion:Z

    :cond_7
    return-object v2
.end method

.method public checkNeedBackup()Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;->e(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;->c(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;)Z

    move-result p0

    return p0
.end method

.method public checkPrepareLocal()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;

    invoke-direct {v8, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->containsContactSid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getClonedContactData(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->keyMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v13, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$c;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v9

    move-object v3, v7

    move-object v4, v12

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl$c;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    const/4 p0, 0x0

    const-string v0, "deleted=0"

    invoke-interface {v8, v13, v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseRawContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactSid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ptadd"

    invoke-interface {p0, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ptmodif"

    invoke-interface {p0, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ptdelete"

    invoke-interface {p0, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
