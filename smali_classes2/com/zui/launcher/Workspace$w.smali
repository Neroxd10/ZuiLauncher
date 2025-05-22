.class Lcom/zui/launcher/Workspace$w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/zui/launcher/widget/LauncherAppWidgetHost$ProviderChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "w"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field final synthetic e:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;Ljava/util/ArrayList;Lcom/zui/launcher/widget/LauncherAppWidgetHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LauncherAppWidgetInfo;",
            ">;",
            "Lcom/zui/launcher/widget/LauncherAppWidgetHost;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/Workspace$w;->e:Lcom/zui/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/Workspace$w;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/zui/launcher/Workspace$w;->b:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    iget-object p1, p1, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    iget-object p1, p1, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    iput-object p1, p0, Lcom/zui/launcher/Workspace$w;->c:Landroid/os/Handler;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/Workspace$w;->d:Z

    invoke-virtual {p3, p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->addProviderChangeListener(Lcom/zui/launcher/widget/LauncherAppWidgetHost$ProviderChangedListener;)V

    iget-object p1, p0, Lcom/zui/launcher/Workspace$w;->c:Landroid/os/Handler;

    invoke-static {p1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    const-class p2, Lcom/zui/launcher/Workspace$w;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/Workspace$w;->c:Landroid/os/Handler;

    const-wide/16 p2, 0x2710

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/ArrayList;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 1

    instance-of v0, p3, Lcom/zui/launcher/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Workspace$w;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p3, Lcom/zui/launcher/widget/PendingAppWidgetHostView;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyWidgetProvidersChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace$w;->run()V

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Workspace$w;->b:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->removeProviderChangeListener(Lcom/zui/launcher/widget/LauncherAppWidgetHost$ProviderChangedListener;)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace$w;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace$w;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/Workspace$w;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/launcher/Workspace$w;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/zui/launcher/Workspace$w;->e:Lcom/zui/launcher/Workspace;

    new-instance v2, Lcom/zui/launcher/u2;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/u2;-><init>(Lcom/zui/launcher/Workspace$w;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/zui/launcher/Workspace;->mapOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->reInflate()V

    goto :goto_0

    :cond_1
    return-void
.end method
