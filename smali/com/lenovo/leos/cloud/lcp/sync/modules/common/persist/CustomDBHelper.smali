.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DB_SAVE_FAILED:J = -0x1L

.field public static final DB_SAVE_OK:J


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public declared-synchronized delete(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->a:Ljava/lang/Class;

    invoke-static {v0, p1, p2}, Lcom/activeandroid/Model;->delete(Ljava/lang/Class;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteAll()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteBy(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public queryAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryBy(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->offset(I)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/activeandroid/query/From;->limit(I)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryBy(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryBy(Ljava/lang/String;[Ljava/lang/Object;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/activeandroid/query/From;->offset(I)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/activeandroid/query/From;->limit(I)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryBy(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryByFirst(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/activeandroid/query/From;->limit(I)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;

    :cond_0
    return-object p0
.end method

.method public queryById(JZ)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)TT;"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "id = ?"

    invoke-virtual {p0, p1, v0}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;

    if-eqz p0, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;

    :cond_0
    return-object p0
.end method

.method public queryCount()I
    .locals 1

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->count()I

    move-result p0

    return p0
.end method

.method public querySingleBy(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Z)TT;"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;

    if-eqz p0, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;

    :cond_0
    return-object p0
.end method

.method public declared-synchronized save(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel<",
            "TT;>;)J"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;->save()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized save(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel<",
            "TT;>;>;)J"
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/activeandroid/Model;

    invoke-virtual {v2}, Lcom/activeandroid/Model;->save()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    :try_start_2
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-wide v0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/16 v0, 0x0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    :try_start_5
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    :goto_0
    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized update(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/activeandroid/query/Update;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->a:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p1, p2}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/Set;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-virtual {p1, p3, p4}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/Set;

    :cond_0
    invoke-virtual {p1}, Lcom/activeandroid/query/Set;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
