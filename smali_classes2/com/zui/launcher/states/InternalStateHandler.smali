.class public abstract Lcom/zui/launcher/states/InternalStateHandler;
.super Landroid/os/Binder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/states/InternalStateHandler$b;
    }
.end annotation


# static fields
.field public static final EXTRA_STATE_HANDLER:Ljava/lang/String; = "launcher.state_handler"

.field private static final a:Lcom/zui/launcher/states/InternalStateHandler$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/states/InternalStateHandler$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/launcher/states/InternalStateHandler$b;-><init>(Lcom/zui/launcher/states/InternalStateHandler$a;)V

    sput-object v0, Lcom/zui/launcher/states/InternalStateHandler;->a:Lcom/zui/launcher/states/InternalStateHandler$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method private static a(Lcom/zui/launcher/Launcher;Landroid/content/Intent;ZZ)Z
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "launcher.state_handler"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    instance-of v2, v0, Lcom/zui/launcher/states/InternalStateHandler;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/zui/launcher/states/InternalStateHandler;

    invoke-virtual {v0, p0, p2}, Lcom/zui/launcher/states/InternalStateHandler;->init(Lcom/zui/launcher/Launcher;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    if-nez p3, :cond_2

    sget-object p1, Lcom/zui/launcher/states/InternalStateHandler;->a:Lcom/zui/launcher/states/InternalStateHandler$b;

    invoke-virtual {p1, p0, p2}, Lcom/zui/launcher/states/InternalStateHandler$b;->c(Lcom/zui/launcher/Launcher;Z)Z

    move-result p1

    :cond_2
    return p1
.end method

.method public static handleCreate(Lcom/zui/launcher/Launcher;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/zui/launcher/states/InternalStateHandler;->a(Lcom/zui/launcher/Launcher;Landroid/content/Intent;ZZ)Z

    move-result p0

    return p0
.end method

.method public static handleNewIntent(Lcom/zui/launcher/Launcher;Landroid/content/Intent;Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/zui/launcher/states/InternalStateHandler;->a(Lcom/zui/launcher/Launcher;Landroid/content/Intent;ZZ)Z

    move-result p0

    return p0
.end method

.method public static hasPending()Z
    .locals 1

    sget-object v0, Lcom/zui/launcher/states/InternalStateHandler;->a:Lcom/zui/launcher/states/InternalStateHandler$b;

    invoke-virtual {v0}, Lcom/zui/launcher/states/InternalStateHandler$b;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final addToIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "launcher.state_handler"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p1
.end method

.method public clearReference()Z
    .locals 1

    sget-object v0, Lcom/zui/launcher/states/InternalStateHandler;->a:Lcom/zui/launcher/states/InternalStateHandler$b;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/states/InternalStateHandler$b;->a(Lcom/zui/launcher/states/InternalStateHandler;)Z

    move-result p0

    return p0
.end method

.method protected abstract init(Lcom/zui/launcher/Launcher;Z)Z
.end method

.method public final initWhenReady()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/states/InternalStateHandler;->a:Lcom/zui/launcher/states/InternalStateHandler$b;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/states/InternalStateHandler$b;->d(Lcom/zui/launcher/states/InternalStateHandler;)V

    return-void
.end method
