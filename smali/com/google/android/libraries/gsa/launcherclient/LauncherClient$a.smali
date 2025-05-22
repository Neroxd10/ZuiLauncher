.class final Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;
.super Lcom/google/android/libraries/a/e;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

.field private c:Landroid/view/WindowManager;

.field private d:I

.field private e:Landroid/view/Window;

.field private f:Z


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/a/e;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->f:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->c:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->e:Landroid/view/Window;

    return-void
.end method

.method public final a(F)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->a:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->f:Z

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->a:Landroid/os/Handler;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->c:Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->c:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->d:I

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->e:Landroid/view/Window;

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    return v4

    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;I)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->g(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/d;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    const-string v3, "stateChanged"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/libraries/gsa/launcherclient/h;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/gsa/launcherclient/h;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0}, Lcom/google/android/libraries/gsa/launcherclient/h;->a()V

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->d:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x200

    goto :goto_0

    :cond_4
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x201

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->c:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->e:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    :cond_5
    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;->onOverlayScrollChanged(F)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_6

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->g(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/d;

    move-result-object p0

    const-string p1, "onScroll 0, overlay closed"

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->g(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/d;

    move-result-object p0

    if-ltz v0, :cond_7

    const-string p1, "onScroll 1, overlay opened"

    goto :goto_1

    :cond_7
    const-string v0, "onScroll"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;F)V

    :cond_8
    :goto_2
    return v1
.end method
