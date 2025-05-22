.class public Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static g:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;


# instance fields
.field a:Ljava/lang/Object;

.field b:Z

.field c:Landroid/os/Handler;

.field d:Lcom/android/systemui/shared/gamemode/GameUtils;

.field e:Ljava/lang/Runnable;

.field f:Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;

.field protected mEnableGameModePower:Z

.field protected mRegisterRetry:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->mEnableGameModePower:Z

    new-instance v0, Lcom/android/systemui/shared/gamemode/GameUtils;

    invoke-direct {v0}, Lcom/android/systemui/shared/gamemode/GameUtils;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->d:Lcom/android/systemui/shared/gamemode/GameUtils;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->mRegisterRetry:I

    new-instance v0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx$a;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx$a;-><init>(Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;)V

    iput-object v0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->e:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx$b;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx$b;-><init>(Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;)V

    iput-object v0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->f:Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;

    iput-object p1, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->c:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/os/Handler;)Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->g:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->g:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    :cond_0
    sget-object p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->g:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    return-object p0
.end method


# virtual methods
.method public synthetic a(Z)V
    .locals 3

    const-string v0, "GameUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterGameMode: GestrueView in:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->b:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "GameUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterGameMode result, mbNowGameMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->b:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected enterGameMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->c:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/shared/gamemode/b;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/gamemode/b;-><init>(Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isEnterGameMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->mEnableGameModePower:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->b:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
