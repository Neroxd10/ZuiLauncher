.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDaoImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDao;


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDaoImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "1=1"

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public deleteAll()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDaoImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->deleteAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized deleteBy(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDaoImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDaoImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->deleteBy(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public deleteBySmsUid(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDaoImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string v0, "sms_uid = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->deleteBy(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized getAllBackupThreadIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDaoImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/activeandroid/query/Select;

    invoke-direct {v2}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;

    invoke-virtual {v2, v3}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v1

    const-string v2, "thread_id"

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/From;->groupBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v1

    const-string v2, "count(thread_id)>=1"

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/From;->having(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;

    iget v2, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;->threadId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBackupCount(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDaoImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDaoImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->queryBy(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public insert(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;->smsUid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDaoImpl;->deleteBySmsUid(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDaoImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->save(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized insert(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDaoImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->save(Ljava/util/List;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public queryBy(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDaoImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsStateDaoImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->queryBy(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;

    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;->smsUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;->smsUid:Ljava/lang/String;

    iget p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsStateModel;->type:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method
