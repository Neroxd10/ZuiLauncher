.class public Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;
    }
.end annotation


# static fields
.field private static b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;->a:Ljava/util/Map;

    return-void
.end method

.method public static I()Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;->b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;-><init>()V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;->b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;->b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;

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
.method public singletonAPI(Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
