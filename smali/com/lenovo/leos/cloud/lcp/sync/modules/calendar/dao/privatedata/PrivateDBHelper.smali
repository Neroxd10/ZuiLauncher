.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;


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

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->b(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->currentUser:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->currentUser:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "calendarDatabase.obj"

    invoke-virtual {v0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v0, p0, v2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v4, p0, v2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v4, v1

    :goto_0
    move-object v1, v0

    goto :goto_3

    :catch_0
    move-object v4, v1

    :catch_1
    move-object v1, v0

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v4, v1

    goto :goto_3

    :catch_2
    move-object v4, v1

    :goto_1
    :try_start_3
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v1, p0, v2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v4, p0, v2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    :goto_2
    return-void

    :catchall_3
    move-exception p0

    :goto_3
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw p0
.end method

.method public static clearData()V
    .locals 4

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "calendarDatabase.obj"

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public static delCalendarSID(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tCalendar:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static delEventSID(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tEvent:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getCalendarCID(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tCalendar:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCalendarData(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tCalendar:Ljava/util/Map;

    return-object p0
.end method

.method public static getCalendarSID(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tCalendar:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static getEventCID(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tEvent:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEventData(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tEvent:Ljava/util/Map;

    return-object p0
.end method

.method public static getEventSID(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tEvent:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static persist()V
    .locals 7

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "calendarDatabase.obj"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    invoke-virtual {v4, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    new-array v5, v2, [Ljava/io/Closeable;

    aput-object v4, v5, v3

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw v1
.end method

.method public static setCalendarSID(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tCalendar:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setEventSID(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tEvent:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
