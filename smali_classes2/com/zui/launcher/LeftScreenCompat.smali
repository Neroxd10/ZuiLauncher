.class public abstract Lcom/zui/launcher/LeftScreenCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/LeftScreenCompat$a;
    }
.end annotation


# static fields
.field public static final LOG_STATUS_INVALID:I = -0x1

.field public static final LOG_STATUS_OFFLINE:I = 0x1

.field public static final LOG_STATUS_ONLINE:I = 0x0

.field public static final OVERLAY_SCREEN:I = 0x3

.field public static final TAG:Ljava/lang/String; = "LeftScreenCompat"

.field private static a:Lcom/zui/launcher/LeftScreenCompat;

.field private static b:Ljava/lang/Object;


# instance fields
.field protected customCallbacks:Lcom/zui/launcher/Launcher$CustomContentCallbacks;

.field protected isCTAVersion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/launcher/LeftScreenCompat;->b:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/LeftScreenCompat;->customCallbacks:Lcom/zui/launcher/Launcher$CustomContentCallbacks;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/LeftScreenCompat;->isCTAVersion:Z

    invoke-virtual {p0}, Lcom/zui/launcher/LeftScreenCompat;->initCustomCallback()V

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/LeftScreenCompat;->isCTAVersion:Z

    return-void
.end method

.method public static debugLeftScreen(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->isDebugApp()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "leftscreen"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/zui/launcher/LeftScreenCompat;
    .locals 3

    sget-object v0, Lcom/zui/launcher/LeftScreenCompat;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/LeftScreenCompat;->a:Lcom/zui/launcher/LeftScreenCompat;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/zui/launcher/LeftScreenCompat;->getLeftScreenVersion()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/zui/launcher/LeftScreenOverlay;

    invoke-direct {v1}, Lcom/zui/launcher/LeftScreenOverlay;-><init>()V

    sput-object v1, Lcom/zui/launcher/LeftScreenCompat;->a:Lcom/zui/launcher/LeftScreenCompat;

    :cond_1
    :goto_0
    sget-object v1, Lcom/zui/launcher/LeftScreenCompat;->a:Lcom/zui/launcher/LeftScreenCompat;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLeftScreenVersion()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public static isOverlayVersion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/LeftScreenCompat;->customCallbacks:Lcom/zui/launcher/Launcher$CustomContentCallbacks;

    sput-object v0, Lcom/zui/launcher/LeftScreenCompat;->a:Lcom/zui/launcher/LeftScreenCompat;

    return-void
.end method

.method protected initCustomCallback()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/LeftScreenCompat$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/LeftScreenCompat$a;-><init>(Lcom/zui/launcher/LeftScreenCompat;)V

    iput-object v0, p0, Lcom/zui/launcher/LeftScreenCompat;->customCallbacks:Lcom/zui/launcher/Launcher$CustomContentCallbacks;

    return-void
.end method

.method public abstract onDestroy()V
.end method

.method public abstract showCTADialog()Z
.end method
