.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;
.source ""


# static fields
.field private static final f:[Ljava/lang/String;

.field private static final g:[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "not_exist"

    const-string v1, "exist"

    const-string v2, "backuped"

    const-string v3, "new_version"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;->f:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->NOT_EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->BACKUPED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->NEW_VERSION:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;->g:[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppstatus()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;->e:Ljava/util/List;

    return-object p0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;
    .locals 9

    invoke-super {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->parse(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;->e:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;->f:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "pn"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "dbt"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;->e:Ljava/util/List;

    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;

    sget-object v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;->g:[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    aget-object v8, v8, v1

    invoke-direct {v7, v5, v8, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;-><init>(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;->e:Ljava/util/List;

    new-instance v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;

    sget-object v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;->g:[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    aget-object v7, v7, v1

    invoke-direct {v6, v4, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;-><init>(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public setAppstatus(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;->e:Ljava/util/List;

    return-void
.end method
