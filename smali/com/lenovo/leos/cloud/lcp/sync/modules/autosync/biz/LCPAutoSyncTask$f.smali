.class synthetic Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$f;->b:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$f;->a:[I

    :try_start_1
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$f;->a:[I

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/LCPAutoSyncTask$f;->a:[I

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->BOOKMARK:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
