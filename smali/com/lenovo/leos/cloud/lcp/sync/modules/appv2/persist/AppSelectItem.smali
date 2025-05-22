.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;
.source ""


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "app_select_item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;",
        ">;"
    }
.end annotation


# instance fields
.field public appName:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "app_name"
    .end annotation
.end field

.field public appStatus:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "app_status"
    .end annotation
.end field

.field public backup:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "backup"
    .end annotation
.end field

.field public checkSum:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "check_sum"
    .end annotation
.end field

.field public dataBackupTime:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "data_backup_time"
    .end annotation
.end field

.field public dataDir:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "data_dir"
    .end annotation
.end field

.field public dataSize:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "data_size"
    .end annotation
.end field

.field public dataUrl:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "data_url"
    .end annotation
.end field

.field public excludeDataDir:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "exclude_data_dir"
    .end annotation
.end field

.field public iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "icon_url"
    .end annotation
.end field

.field public match:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "match"
    .end annotation
.end field

.field public packageName:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "package_name"
    .end annotation
.end field

.field public realsize:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "real_size"
    .end annotation
.end field

.field public remarks:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "remarks"
    .end annotation
.end field

.field public size:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "size"
    .end annotation
.end field

.field public time:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "time"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "url"
    .end annotation
.end field

.field public versionCode:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "version_code"
    .end annotation
.end field

.field public versionName:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "version_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;
    .locals 3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->packageName:Ljava/lang/String;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->appStatus:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->appStatus:I

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataBackupTime:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataBackupTime:Ljava/lang/String;

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataSize:J

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataSize:J

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->excludeDataDir:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->excludeDataDir:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataDir:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataDir:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->iconUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->iconUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->appName:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->dataUrl:Ljava/lang/String;

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->realsize:J

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->realsize:J

    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->backup:Z

    iput-boolean v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->backup:Z

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->checkSum:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->checkSum:Ljava/lang/String;

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->size:J

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->size:J

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->time:J

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->time:J

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->url:Ljava/lang/String;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->match:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->match:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->versionCode:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->versionCode:I

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->versionName:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->remarks:Ljava/lang/String;

    iput-object p0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->remarks:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;

    move-result-object p0

    return-object p0
.end method
