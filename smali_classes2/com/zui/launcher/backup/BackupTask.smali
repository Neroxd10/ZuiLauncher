.class public Lcom/zui/launcher/backup/BackupTask;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_RESTORE_SUCCESS:Ljava/lang/String; = "com.zui.launcher.action.RESTORE_SUCCESS"

.field public static final BACKUP_DO_NOTHING:I = 0x5

.field public static final BACKUP_SUCCESS:I = 0x3e9

.field public static final COMMAND_RESTORE:Ljava/lang/String; = "restoreDatabase"

.field public static final DB_CACHE_FILES:[Ljava/lang/String;

.field public static final DB_FILES:[Ljava/lang/String;

.field public static final DEFAULT_DB:[Ljava/lang/String;

.field public static final DEFAULT_DB_DIR:Ljava/lang/String; = "/system/etc/"

.field public static final DEFAULT_DB_EMPTY_FLAG:[Ljava/lang/String;

.field public static final RESTORE_NOFLEEROR:I = 0x4

.field public static final RESTORE_SUCCESS:I = 0x2

.field public static final SP_FILES:[Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/zui/launcher/backup/IBackupController;

.field private c:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "launcher.db"

    const-string v1, "permanent_settings.db"

    const-string v2, "leftScreen.db"

    const-string v3, "launcher_2layer.db"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/launcher/backup/BackupTask;->DB_FILES:[Ljava/lang/String;

    const-string v4, "launcher.db-wal"

    const-string v5, "launcher.db-shm"

    const-string v6, "permanent_settings.db-wal"

    const-string v7, "permanent_settings.db-shm"

    const-string v8, "leftScreen.db-wal"

    const-string v9, "leftScreen.db-shm"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/launcher/backup/BackupTask;->DB_CACHE_FILES:[Ljava/lang/String;

    const-string v1, "com.zui.launcher.permanent_settings.xml"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/launcher/backup/BackupTask;->SP_FILES:[Ljava/lang/String;

    const-string v1, "EMPTY_DATABASE_CREATED"

    const-string v2, "EMPTY_DATABASE_CREATED_2LAYER"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/launcher/backup/BackupTask;->DEFAULT_DB_EMPTY_FLAG:[Ljava/lang/String;

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/backup/BackupTask;->DEFAULT_DB:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/backup/IBackupController;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/backup/BackupTask;->b:Lcom/zui/launcher/backup/IBackupController;

    return-void
.end method

.method private a(Ljava/io/File;Ljava/io/File;Ljava/util/ArrayList;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;I)Z"
        }
    .end annotation

    const-string v0, " times: "

    const-string v1, " dest: "

    const-string v2, "BackupTask"

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    invoke-static {p1, p2}, Lcom/zui/launcher/Utilities;->fileCopy(Ljava/io/File;Ljava/io/File;)V

    invoke-static {p1}, Lcom/zui/launcher/networksdk/MD5Util;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/zui/launcher/networksdk/MD5Util;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  fileCopy failed:  src: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v5, v4

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  fileCopy success!!!!:  src: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    const/4 v5, 0x3

    if-ge p4, v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  fileCopy failed for md5 check:  src: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr p4, v3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/backup/BackupTask;->a(Ljava/io/File;Ljava/io/File;Ljava/util/ArrayList;I)Z

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  fileCopy failed and out of times: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  src: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "value"

    const-string v3, ""

    const-string v4, "BackUp_Restor"

    iget-object v5, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    const-string v6, ".dbBackup"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "dbBackupZip"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v1, Lcom/zui/launcher/backup/BackupTask;->c:Ljava/io/File;

    iget-object v6, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    const-string v7, "launcher.db"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dbBackupZip backup:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/zui/launcher/backup/BackupTask;->c:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "BackupTask"

    invoke-static {v9, v8}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v10, v0, v8

    array-length v11, v0

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    aget-object v0, v0, v12

    const-string v11, "true"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v12, v8

    :cond_2
    :goto_0
    const-string v0, "backupDatabase"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v11, "shared_prefs/"

    const-string v13, "downgrade_schema.json"

    if-eqz v0, :cond_13

    invoke-static {v5}, Lcom/zui/launcher/BackupTools;->removeDirContent(Ljava/io/File;)V

    :try_start_0
    sget-object v0, Lcom/zui/launcher/backup/BackupTask;->DB_FILES:[Ljava/lang/String;

    array-length v3, v0

    move v4, v8

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v10, v0, v4

    iget-object v15, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    invoke-virtual {v15, v10}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    new-instance v14, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v14, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    invoke-direct {v1, v15, v14, v7, v8}, Lcom/zui/launcher/backup/BackupTask;->a(Ljava/io/File;Ljava/io/File;Ljava/util/ArrayList;I)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    sget-object v3, Lcom/zui/launcher/backup/BackupTask;->DEFAULT_DB:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    sget-object v3, Lcom/zui/launcher/backup/BackupTask;->DEFAULT_DB:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lcom/zui/launcher/backup/BackupTask;->DEFAULT_DB_EMPTY_FLAG:[Ljava/lang/String;

    aget-object v4, v4, v0

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v10, "get_empty_db_flag"

    invoke-static {v4, v10, v8}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/io/File;

    const-string v8, "/system/etc/"

    invoke-direct {v4, v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    invoke-direct {v1, v4, v8, v7, v10}, Lcom/zui/launcher/backup/BackupTask;->a(Ljava/io/File;Ljava/io/File;Ljava/util/ArrayList;I)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/zui/launcher/backup/BackupTask;->DB_CACHE_FILES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_b

    aget-object v4, v0, v3

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_9
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-direct {v1, v8, v10, v7, v4}, Lcom/zui/launcher/backup/BackupTask;->a(Ljava/io/File;Ljava/io/File;Ljava/util/ArrayList;I)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    sget-object v0, Lcom/zui/launcher/backup/BackupTask;->SP_FILES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v2, :cond_e

    aget-object v3, v0, v8

    new-instance v4, Ljava/io/File;

    iget-object v6, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v4, v6}, Lcom/zui/launcher/Utilities;->fileCopy(Ljava/io/File;Ljava/io/File;)V

    :cond_c
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_e
    iget-object v0, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    invoke-virtual {v0, v13}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v0, v2}, Lcom/zui/launcher/Utilities;->fileCopy(Ljava/io/File;Ljava/io/File;)V

    :cond_f
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    const-string v0, "backup success"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/zui/launcher/backup/BackupTask;->c:Ljava/io/File;

    invoke-static {v7, v0}, Lcom/zui/launcher/backup/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/io/File;)V

    if-nez v12, :cond_11

    iget-object v0, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    const-string v2, "com.zui.launcher.fileprovider"

    iget-object v3, v1, Lcom/zui/launcher/backup/BackupTask;->c:Ljava/io/File;

    invoke-static {v0, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->getClonePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    iget-object v0, v1, Lcom/zui/launcher/backup/BackupTask;->b:Lcom/zui/launcher/backup/IBackupController;

    iget-object v2, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    const/16 v18, 0x1

    const/16 v19, 0x1

    const-string v20, ""

    iget-object v3, v1, Lcom/zui/launcher/backup/BackupTask;->c:Ljava/io/File;

    invoke-static {v3}, Lcom/zui/launcher/backup/FileMD5;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-interface/range {v16 .. v21}, Lcom/zui/launcher/backup/IBackupController;->onProcessedForClone(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_11
    const/16 v0, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "backup error"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_12

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_12
    iget-object v0, v1, Lcom/zui/launcher/backup/BackupTask;->b:Lcom/zui/launcher/backup/IBackupController;

    iget-object v2, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    move-object v1, v0

    invoke-interface/range {v1 .. v6}, Lcom/zui/launcher/backup/IBackupController;->onProcessedForClone(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_13
    const-string v0, "restoreDatabase"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :try_start_1
    sget-object v0, Lcom/zui/launcher/backup/BackupTask;->DB_FILES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v2, :cond_17

    aget-object v8, v0, v7

    iget-object v9, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_15

    iget-object v14, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    invoke-virtual {v14, v8}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_14

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_14
    invoke-static {v9, v8}, Lcom/zui/launcher/BackupTools;->removeCache(Ljava/io/File;Ljava/lang/String;)V

    :cond_15
    invoke-static {v10, v9}, Lcom/zui/launcher/Utilities;->fileCopy(Ljava/io/File;Ljava/io/File;)V

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_17
    sget-object v0, Lcom/zui/launcher/backup/BackupTask;->DB_CACHE_FILES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v2, :cond_19

    aget-object v8, v0, v7

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-static {v10, v9}, Lcom/zui/launcher/Utilities;->fileCopy(Ljava/io/File;Ljava/io/File;)V

    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_19
    sget-object v0, Lcom/zui/launcher/backup/BackupTask;->SP_FILES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v2, :cond_1c

    aget-object v7, v0, v6

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-static {v9, v8}, Lcom/zui/launcher/Utilities;->fileCopy(Ljava/io/File;Ljava/io/File;)V

    goto :goto_9

    :cond_1a
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_1b
    iget-object v7, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/zui/launcher/util/SettingsValue;->clearPermanentSettings(Landroid/content/Context;)V

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_1c
    iget-object v0, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    invoke-virtual {v0, v13}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v2}, Lcom/zui/launcher/model/DbDowngradeHelper;->parse(Ljava/io/File;)Lcom/zui/launcher/model/DbDowngradeHelper;

    move-result-object v5

    iget v5, v5, Lcom/zui/launcher/model/DbDowngradeHelper;->version:I

    invoke-static {v0}, Lcom/zui/launcher/model/DbDowngradeHelper;->parse(Ljava/io/File;)Lcom/zui/launcher/model/DbDowngradeHelper;

    move-result-object v6

    iget v6, v6, Lcom/zui/launcher/model/DbDowngradeHelper;->version:I

    if-le v5, v6, :cond_1d

    invoke-static {v2, v0}, Lcom/zui/launcher/Utilities;->fileCopy(Ljava/io/File;Ljava/io/File;)V

    :cond_1d
    if-eqz v12, :cond_1e

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1e
    const-string v0, "restorsuccessful"

    const/4 v2, 0x0

    invoke-static {v4, v0, v3, v2}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v5, v1, Lcom/zui/launcher/backup/BackupTask;->b:Lcom/zui/launcher/backup/IBackupController;

    iget-object v6, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, ""

    const-string v10, ""

    invoke-interface/range {v5 .. v10}, Lcom/zui/launcher/backup/IBackupController;->onProcessedForClone(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.zui.launcher.action.RESTORE_SUCCESS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    if-eqz v12, :cond_1f

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1f
    const-string v0, "backupfailure"

    const/4 v2, 0x0

    invoke-static {v4, v0, v3, v2}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v5, v1, Lcom/zui/launcher/backup/BackupTask;->b:Lcom/zui/launcher/backup/IBackupController;

    iget-object v6, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    const-string v10, ""

    invoke-interface/range {v5 .. v10}, Lcom/zui/launcher/backup/IBackupController;->onProcessedForClone(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v12, :cond_20

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_20
    const-string v0, "restore"

    const-string v2, "fail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "restorfailure"

    const/4 v2, 0x0

    invoke-static {v4, v0, v3, v2}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v5, v1, Lcom/zui/launcher/backup/BackupTask;->b:Lcom/zui/launcher/backup/IBackupController;

    iget-object v6, v1, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    const-string v10, ""

    invoke-interface/range {v5 .. v10}, Lcom/zui/launcher/backup/IBackupController;->onProcessedForClone(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_21
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/backup/BackupTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    const-string v1, "restore"

    const/4 v2, 0x1

    const-string v3, "BackUp_Restor"

    const-string v4, ""

    const/4 v5, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    const-string v6, "fail"

    const-string v7, "backup"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupTask;->b:Lcom/zui/launcher/backup/IBackupController;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    invoke-interface {p1, p0, v5, v2, v4}, Lcom/zui/launcher/backup/IBackupController;->onProcessed(Landroid/content/Context;ZZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const-string p1, "backupsuccessful"

    invoke-static {v3, p1, v4, v5}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :try_start_0
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupTask;->c:Ljava/io/File;

    invoke-static {p1}, Lcom/zui/launcher/backup/FileMD5;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MD5First"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/zui/launcher/backup/BackupTask;->b:Lcom/zui/launcher/backup/IBackupController;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/zui/launcher/backup/IBackupController;->uploadFile(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const-string p0, "ok"

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "restorfailure"

    invoke-static {v3, p1, v4, v5}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupTask;->b:Lcom/zui/launcher/backup/IBackupController;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    invoke-interface {p1, p0, v5, v5, v4}, Lcom/zui/launcher/backup/IBackupController;->onProcessed(Landroid/content/Context;ZZLjava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_2

    :cond_2
    const-string p1, "backupfailure"

    invoke-static {v3, p1, v4, v5}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupTask;->b:Lcom/zui/launcher/backup/IBackupController;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    invoke-interface {p1, p0, v2, v5, v4}, Lcom/zui/launcher/backup/IBackupController;->onProcessed(Landroid/content/Context;ZZLjava/lang/String;)V

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string p1, "success"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "restorsuccessful"

    invoke-static {v3, p1, v4, v5}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupTask;->b:Lcom/zui/launcher/backup/IBackupController;

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    invoke-interface {p1, v0, v5, v2, v4}, Lcom/zui/launcher/backup/IBackupController;->onProcessed(Landroid/content/Context;ZZLjava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupTask;->a:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.zui.launcher.action.RESTORE_SUCCESS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/backup/BackupTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
