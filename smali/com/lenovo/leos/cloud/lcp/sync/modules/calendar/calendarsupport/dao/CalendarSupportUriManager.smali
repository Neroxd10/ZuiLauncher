.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BIRTHDAY_HEADICON_DIR:Ljava/lang/String; = "/Android/data/com.lenovo.calendar/cache/tmp"

.field public static BirthDayUri:Landroid/net/Uri;

.field public static BirthdayHeadIconDirPath:Ljava/lang/String;

.field public static IsSyncAvailable:Z

.field public static IsUriAvailable:Z

.field public static IsV2Uri:Z

.field public static LeReminderUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "content://com.lenovo.app.calendar/birthday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->BirthDayUri:Landroid/net/Uri;

    const-string v0, "content://com.lenovo.app.calendar/event"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->LeReminderUri:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->IsV2Uri:Z

    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->IsUriAvailable:Z

    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->IsSyncAvailable:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->BirthdayHeadIconDirPath:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->b()Z

    move-result v0

    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->IsSyncAvailable:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.lenovo.sync.calendar/birthday"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "content://com.lenovo.sync.calendar/event"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "\u751f\u65e5\u63d0\u9192ContentProvider V2\u63a5\u53e3\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->BirthDayUri:Landroid/net/Uri;

    sput-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->LeReminderUri:Landroid/net/Uri;

    sput-boolean v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->IsV2Uri:Z

    :goto_0
    sput-boolean v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->IsUriAvailable:Z

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->BirthDayUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->LeReminderUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u751f\u65e5\u63d0\u9192ContentProvider V1\u63a5\u53e3\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->IsUriAvailable:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/CalendarSupportUriManager;->BirthdayHeadIconDirPath:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/data/com.lenovo.calendar/cache/tmp"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static b()Z
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/SyncMetadataDaoImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/SyncMetadataDaoImpl;-><init>()V

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/SyncMetadataDao;->getTableState()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static c(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v6, 0x1

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    :cond_1
    :goto_0
    return v6
.end method
