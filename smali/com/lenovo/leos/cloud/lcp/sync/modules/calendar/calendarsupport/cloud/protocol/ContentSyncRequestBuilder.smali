.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/BaseSyncRequestBuilder;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

.field private c:Ljava/lang/String;

.field private d:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/LeReminderDao;

.field private e:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/BirthDayDao;

.field private f:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/ScheduleDao;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->c:Ljava/lang/String;

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/LeReminderDaoImp;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/LeReminderDaoImp;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/LeReminderDao;

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/BirthDayDaoImp;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/BirthDayDaoImp;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/BirthDayDao;

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/ScheduleDaoImpl;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/ScheduleDaoImpl;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/ScheduleDao;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    return-object p0
.end method

.method static synthetic c(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/LeReminderDao;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/LeReminderDao;

    return-object p0
.end method

.method static synthetic d(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/BirthDayDao;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/BirthDayDao;

    return-object p0
.end method

.method static synthetic e(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/ScheduleDao;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/ScheduleDao;

    return-object p0
.end method

.method static synthetic f(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;ILjava/lang/Object;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->j(ILjava/lang/Object;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;)Z

    move-result p0

    return p0
.end method

.method private g(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
    .locals 7

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportTaskCache;->getClientAddCache()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportTaskCache$CidType;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportTaskCache$CidType;->getCid()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportTaskCache$CidType;->getType()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const-string v0, "reminder"

    :cond_0
    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    const-string v0, "birthday"

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    const-string v0, "schedule"

    goto :goto_1

    :goto_2
    :try_start_0
    const-string v0, "LcpCalendarTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e91\u7aef\u4e0d\u5b58\u5728\u6570\u636e[cid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]\uff0c\u51c6\u5907\u5907\u4efd\u5230\u4e91\u7aef"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "c"

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequest;->addBackupData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportTaskCache;->clearAddCache()V

    return-void
.end method

.method private h(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
    .locals 0

    new-instance p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder$a;

    invoke-direct {p3, p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequest;)V

    invoke-virtual {p1, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;->tranverseClientModify(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse$ContentCheckSumVisitor;)V

    return-void
.end method

.method private i(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
    .locals 0

    new-instance p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder$b;

    invoke-direct {p3, p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequest;)V

    invoke-virtual {p1, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;->tranverseServerModify(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse$ContentCheckSumVisitor;)V

    return-void
.end method

.method private j(ILjava/lang/Object;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;)Z
    .locals 2

    sget-boolean p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->HasExColumn:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    if-ne p1, v0, :cond_0

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/LeReminder;

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/LeReminder;->getContentCrcValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;->getContentCrcValue()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->getEx3()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->setEx3(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportTaskCache;->UpdateEx3List:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public buildModifyRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/BaseCalendarSupportProtocol;
    .locals 2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequest;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->i(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->h(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    invoke-direct {p0, v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->g(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    return-object v0
.end method
