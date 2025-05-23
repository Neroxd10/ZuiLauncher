.class public Lcom/android/systemui/shared/system/InputConsumerController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/InputConsumerController$a;,
        Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;,
        Lcom/android/systemui/shared/system/InputConsumerController$InputListener;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "InputConsumerController"


# instance fields
.field private final a:Landroid/view/IWindowManager;

.field private final b:Landroid/os/IBinder;

.field private final c:Ljava/lang/String;

.field private d:Lcom/android/systemui/shared/system/InputConsumerController$a;

.field private e:Lcom/android/systemui/shared/system/InputConsumerController$InputListener;

.field private f:Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/IWindowManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/InputConsumerController;->a:Landroid/view/IWindowManager;

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/InputConsumerController;->b:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/systemui/shared/system/InputConsumerController;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/android/systemui/shared/system/InputConsumerController;)Lcom/android/systemui/shared/system/InputConsumerController$InputListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/InputConsumerController;->e:Lcom/android/systemui/shared/system/InputConsumerController$InputListener;

    return-object p0
.end method

.method public static getRecentsAnimationInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;
    .locals 3

    new-instance v0, Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const-string v2, "recents_animation_input_consumer"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/system/InputConsumerController;-><init>(Landroid/view/IWindowManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/systemui/shared/system/InputConsumerController;->g:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "registered="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shared/system/InputConsumerController;->d:Lcom/android/systemui/shared/system/InputConsumerController$a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isRegistered()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/InputConsumerController;->d:Lcom/android/systemui/shared/system/InputConsumerController$a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerInputConsumer()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/InputConsumerController;->registerInputConsumer(Z)V

    return-void
.end method

.method public registerInputConsumer(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shared/system/InputConsumerController;->d:Lcom/android/systemui/shared/system/InputConsumerController$a;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/InputConsumerController;->a:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/shared/system/InputConsumerController;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/systemui/shared/system/InputConsumerController;->a:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/shared/system/InputConsumerController;->b:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/systemui/shared/system/InputConsumerController;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v3, v0}, Landroid/view/IWindowManager;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/systemui/shared/system/InputConsumerController;->g:Ljava/lang/String;

    const-string v3, "Failed to create input consumer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v1, Lcom/android/systemui/shared/system/InputConsumerController$a;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    :goto_1
    invoke-direct {v1, p0, v0, v2, p1}, Lcom/android/systemui/shared/system/InputConsumerController$a;-><init>(Lcom/android/systemui/shared/system/InputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v1, p0, Lcom/android/systemui/shared/system/InputConsumerController;->d:Lcom/android/systemui/shared/system/InputConsumerController$a;

    iget-object p0, p0, Lcom/android/systemui/shared/system/InputConsumerController;->f:Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_1
    return-void
.end method

.method public setInputListener(Lcom/android/systemui/shared/system/InputConsumerController$InputListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/system/InputConsumerController;->e:Lcom/android/systemui/shared/system/InputConsumerController$InputListener;

    return-void
.end method

.method public setRegistrationListener(Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/system/InputConsumerController;->f:Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shared/system/InputConsumerController;->d:Lcom/android/systemui/shared/system/InputConsumerController$a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_1
    return-void
.end method

.method public unregisterInputConsumer()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/system/InputConsumerController;->d:Lcom/android/systemui/shared/system/InputConsumerController$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/InputConsumerController;->a:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/shared/system/InputConsumerController;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/systemui/shared/system/InputConsumerController;->g:Ljava/lang/String;

    const-string v3, "Failed to destroy input consumer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/InputConsumerController;->d:Lcom/android/systemui/shared/system/InputConsumerController$a;

    invoke-virtual {v1}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/shared/system/InputConsumerController;->d:Lcom/android/systemui/shared/system/InputConsumerController$a;

    iget-object p0, p0, Lcom/android/systemui/shared/system/InputConsumerController;->f:Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_0
    return-void
.end method
