.class public Lcom/lenovo/lsf/lenovoid/c/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/lenovo/lsf/lenovoid/c/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    const-class v0, Lcom/lenovo/lsf/lenovoid/c/a;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/lenovo/lsf/lenovoid/c/a;->a:Lcom/lenovo/lsf/lenovoid/c/a;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized b()Lcom/lenovo/lsf/lenovoid/c/a;
    .locals 2

    const-class v0, Lcom/lenovo/lsf/lenovoid/c/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/lsf/lenovoid/c/a;->a:Lcom/lenovo/lsf/lenovoid/c/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/lsf/lenovoid/c/a;

    invoke-direct {v1}, Lcom/lenovo/lsf/lenovoid/c/a;-><init>()V

    sput-object v1, Lcom/lenovo/lsf/lenovoid/c/a;->a:Lcom/lenovo/lsf/lenovoid/c/a;

    :cond_0
    sget-object v1, Lcom/lenovo/lsf/lenovoid/c/a;->a:Lcom/lenovo/lsf/lenovoid/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
