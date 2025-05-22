.class Lcom/zui/launchersdk/api/ZLauncherClient1$d;
.super Lcom/zui/launchersdk/api/IZLauncherOverlayCallback$Stub;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launchersdk/api/ZLauncherClient1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/zui/launchersdk/api/ZLauncherClient1;

.field private final b:Landroid/os/Handler;

.field private c:Landroid/view/Window;

.field private d:Z

.field private e:Landroid/view/WindowManager;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launchersdk/api/IZLauncherOverlayCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->d:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->d:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->a:Lcom/zui/launchersdk/api/ZLauncherClient1;

    iput-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->e:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->c:Landroid/view/Window;

    return-void
.end method

.method public h(Lcom/zui/launchersdk/api/ZLauncherClient1;)V
    .locals 2

    iput-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->a:Lcom/zui/launchersdk/api/ZLauncherClient1;

    invoke-static {p1}, Lcom/zui/launchersdk/api/ZLauncherClient1;->l(Lcom/zui/launchersdk/api/ZLauncherClient1;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->e:Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->e:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->f:I

    invoke-static {p1}, Lcom/zui/launchersdk/api/ZLauncherClient1;->l(Lcom/zui/launchersdk/api/ZLauncherClient1;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->c:Landroid/view/Window;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->a:Lcom/zui/launchersdk/api/ZLauncherClient1;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 p0, 0x4

    if-eq v2, p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->g(Lcom/zui/launchersdk/api/ZLauncherClient1;I)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->f:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_3
    iget-object p1, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->e:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->c:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    :cond_4
    invoke-static {v0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->a(Lcom/zui/launchersdk/api/ZLauncherClient1;)I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->a:Lcom/zui/launchersdk/api/ZLauncherClient1;

    invoke-static {p0}, Lcom/zui/launchersdk/api/ZLauncherClient1;->j(Lcom/zui/launchersdk/api/ZLauncherClient1;)Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/zui/launchersdk/api/ZLauncherClientCallbacks;->onOverlayScrollChanged(F)V

    :cond_5
    return v1
.end method

.method public overlayScrollChanged(F)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->b:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->a(Z)V

    :cond_0
    return-void
.end method

.method public overlayStatusChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/zui/launchersdk/api/ZLauncherClient1$d;->b:Landroid/os/Handler;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
