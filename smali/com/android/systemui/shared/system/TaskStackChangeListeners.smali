.class public Lcom/android/systemui/shared/system/TaskStackChangeListeners;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/TaskStackChangeListeners$b;,
        Lcom/android/systemui/shared/system/TaskStackChangeListeners$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "TaskStackChangeListeners"

.field private static final c:Lcom/android/systemui/shared/system/TaskStackChangeListeners;


# instance fields
.field private final a:Lcom/android/systemui/shared/system/TaskStackChangeListeners$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->c:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners$a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->a:Lcom/android/systemui/shared/system/TaskStackChangeListeners$a;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->c:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    return-object v0
.end method


# virtual methods
.method public registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->a:Lcom/android/systemui/shared/system/TaskStackChangeListeners$a;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->a:Lcom/android/systemui/shared/system/TaskStackChangeListeners$a;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners$a;->a(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->a:Lcom/android/systemui/shared/system/TaskStackChangeListeners$a;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->a:Lcom/android/systemui/shared/system/TaskStackChangeListeners$a;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners$a;->b(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
