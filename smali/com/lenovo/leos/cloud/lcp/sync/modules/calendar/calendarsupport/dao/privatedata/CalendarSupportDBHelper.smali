.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->currentUser:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->currentUser:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->init(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static b(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;)V
    .locals 3

    if-eqz p0, :cond_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2DeleteMetas:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->getSid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2AddOrUpdateMetas:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->getSid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2Metas:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->getSid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2Metas:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;-><init>()V

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2Metas:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->setCid(J)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->setSid(J)V

    invoke-virtual {v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->setType(I)V

    sget-boolean p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->HasExColumn:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->setEx3(Ljava/lang/String;)V

    :cond_1
    const-class p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;

    monitor-enter p0

    :try_start_0
    sget-object p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->currentUser:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->setUserName(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2AddOrUpdateMetas:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2DeleteMetas:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static d(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->getCid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->getSid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2Metas:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->ScheduleCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->BirthDayCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->ReminderCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4ece\u6570\u636e\u5e93\u4e2d\u8bfb\u53d6\u7528\u6237["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]\u751f\u65e5\u63d0\u9192\u79c1\u6709\u6570\u636e\u6210\u529f"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LcpCalendarTask"

    invoke-static {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static delBirthdaySID(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->BirthDayCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2Metas:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->BirthDayCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->removeByKey(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static delLeReminderSID(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->ReminderCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2Metas:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->ReminderCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->removeByKey(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static delScheduleSID(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->ScheduleCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2Metas:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->ScheduleCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->removeByKey(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static deleteSyncMetadata(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;)V
    .locals 3

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->ReminderCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->getCid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->removeByKey(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->BirthDayCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->ScheduleCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;)V

    return-void
.end method

.method public static getBirthdayCid(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->BirthDayCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static getBirthdaySID(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->BirthDayCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static getBirthdaySyncMetadata(Ljava/lang/String;Ljava/lang/Long;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->getBirthdaySID(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2Metas:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLeReminderCid(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->ReminderCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static getLeReminderSID(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->ReminderCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static getScheduleCID(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->ScheduleCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static getScheduleSID(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->ScheduleCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static getSyncMetadataBySid(Ljava/lang/String;Ljava/lang/Long;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2Metas:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;

    return-object p0
.end method

.method public static init(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportTaskCache;->clear()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "default"

    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/SyncMetadataDaoImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/SyncMetadataDaoImpl;-><init>()V

    invoke-interface {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/SyncMetadataDao;->queryByUserName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->d(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_1
    const-string p0, "LcpCalendarTask"

    const-string v0, "\u6ca1\u80fd\u6b63\u786e\u8bfb\u53d6\u5230\u751f\u65e5\u63d0\u9192\u79c1\u6709\u6570\u636e"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static persist(Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/SyncMetadataDaoImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/SyncMetadataDaoImpl;-><init>()V

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2DeleteMetas:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_1

    invoke-interface {v0, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/SyncMetadataDao;->deleteById(J)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2AddOrUpdateMetas:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->getId()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_4

    invoke-interface {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/SyncMetadataDao;->update(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;)I

    goto :goto_1

    :cond_4
    invoke-interface {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/SyncMetadataDao;->insert(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-lez v7, :cond_3

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->setId(J)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7528\u6237["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]\u65e5\u5386\u751f\u65e5\u63d0\u9192\u79c1\u6709\u6570\u636e\u6210\u529f\u5199\u5165\u6570\u636e\u5e93"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LcpCalendarTask"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setBirthdayCID2SID(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a(Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-static {p1, p2, p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->c(Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->BirthDayCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setLeReminderCID2SID(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p1, p2, p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->c(Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->ReminderCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setScheduleCID2SID(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a(Ljava/lang/String;)V

    const/4 p0, 0x3

    invoke-static {p1, p2, p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->c(Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->ScheduleCid2Sid:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setToUpdateList(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2AddOrUpdateMetas:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->getSid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDatabase;->Sid2DeleteMetas:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;->getSid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
