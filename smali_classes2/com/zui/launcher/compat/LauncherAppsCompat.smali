.class public abstract Lcom/zui/launcher/compat/LauncherAppsCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/zui/launcher/compat/LauncherAppsCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/launcher/compat/LauncherAppsCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/LauncherAppsCompat;
    .locals 2

    sget-object v0, Lcom/zui/launcher/compat/LauncherAppsCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/compat/LauncherAppsCompat;->sInstance:Lcom/zui/launcher/compat/LauncherAppsCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/launcher/compat/LauncherAppsCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/zui/launcher/compat/LauncherAppsCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zui/launcher/compat/LauncherAppsCompat;->sInstance:Lcom/zui/launcher/compat/LauncherAppsCompat;

    :cond_0
    sget-object p0, Lcom/zui/launcher/compat/LauncherAppsCompat;->sInstance:Lcom/zui/launcher/compat/LauncherAppsCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract addOnAppsChangedCallback(Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
.end method

.method public abstract removeOnAppsChangedCallback(Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
.end method
