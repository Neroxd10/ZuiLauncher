.class public Lcom/zui/launcher/LauncherModel$LoaderTransaction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoaderTransaction"
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/model/LoaderTask;

.field final synthetic b:Lcom/zui/launcher/LauncherModel;


# direct methods
.method private constructor <init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/model/LoaderTask;)V
    .locals 2

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel$LoaderTransaction;->b:Lcom/zui/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/zui/launcher/LauncherModel;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/zui/launcher/LauncherModel;->c:Lcom/zui/launcher/model/LoaderTask;

    if-ne v1, p2, :cond_0

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$LoaderTransaction;->a:Lcom/zui/launcher/model/LoaderTask;

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/zui/launcher/LauncherModel;->d:Z

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/zui/launcher/LauncherModel;->b(Lcom/zui/launcher/LauncherModel;Z)Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string p1, "Loader already stopped"

    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/model/LoaderTask;Lcom/zui/launcher/LauncherModel$k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/LauncherModel$LoaderTransaction;-><init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/model/LoaderTask;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$LoaderTransaction;->b:Lcom/zui/launcher/LauncherModel;

    iget-object v0, v0, Lcom/zui/launcher/LauncherModel;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$LoaderTransaction;->b:Lcom/zui/launcher/LauncherModel;

    iget-object v1, v1, Lcom/zui/launcher/LauncherModel;->c:Lcom/zui/launcher/model/LoaderTask;

    iget-object v2, p0, Lcom/zui/launcher/LauncherModel$LoaderTransaction;->a:Lcom/zui/launcher/model/LoaderTask;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$LoaderTransaction;->b:Lcom/zui/launcher/LauncherModel;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/zui/launcher/LauncherModel;->c:Lcom/zui/launcher/model/LoaderTask;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$LoaderTransaction;->b:Lcom/zui/launcher/LauncherModel;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/launcher/LauncherModel;->d:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public commit()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$LoaderTransaction;->b:Lcom/zui/launcher/LauncherModel;

    iget-object v0, v0, Lcom/zui/launcher/LauncherModel;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$LoaderTransaction;->b:Lcom/zui/launcher/LauncherModel;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/zui/launcher/LauncherModel;->b(Lcom/zui/launcher/LauncherModel;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
