.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;
    }
.end annotation


# static fields
.field private static b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;->a:Ljava/util/Map;

    return-void
.end method

.method public static I()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;-><init>()V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearAllParameter()V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public exist(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;)Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of p1, p0, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public set(Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter$a;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/biz/AutoSyncParameter;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method
