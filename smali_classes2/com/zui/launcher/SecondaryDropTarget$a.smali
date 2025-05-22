.class Lcom/zui/launcher/SecondaryDropTarget$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/DragSource;
.implements Lcom/zui/launcher/Launcher$OnResumeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/SecondaryDropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/DragSource;

.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/zui/launcher/DropTarget$DragObject;

.field final synthetic e:Lcom/zui/launcher/SecondaryDropTarget;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/SecondaryDropTarget;Lcom/zui/launcher/DragSource;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/SecondaryDropTarget$a;->e:Lcom/zui/launcher/SecondaryDropTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/SecondaryDropTarget$a;->a:Lcom/zui/launcher/DragSource;

    iput-object p3, p0, Lcom/zui/launcher/SecondaryDropTarget$a;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/SecondaryDropTarget$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/SecondaryDropTarget$a;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/SecondaryDropTarget$a;->d:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v1, p0, Lcom/zui/launcher/SecondaryDropTarget$a;->a:Lcom/zui/launcher/DragSource;

    iput-object v1, v0, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/zui/launcher/DropTarget$DragObject;->cancelled:Z

    iget-object p0, p0, Lcom/zui/launcher/SecondaryDropTarget$a;->e:Lcom/zui/launcher/SecondaryDropTarget;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v0, v2}, Lcom/zui/launcher/DragSource;->onDropCompleted(Landroid/view/View;Lcom/zui/launcher/DropTarget$DragObject;Z)V

    return-void
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/SecondaryDropTarget$a;->a:Lcom/zui/launcher/DragSource;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;->fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/zui/launcher/DropTarget$DragObject;Z)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/SecondaryDropTarget$a;->d:Lcom/zui/launcher/DropTarget$DragObject;

    return-void
.end method

.method public onLauncherResume()V
    .locals 4

    new-instance v0, Lcom/zui/launcher/util/PackageManagerHelper;

    iget-object v1, p0, Lcom/zui/launcher/SecondaryDropTarget$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zui/launcher/SecondaryDropTarget$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/launcher/SecondaryDropTarget$a;->d:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v2, v2, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object v2, v2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    const/16 v3, 0x2000

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/launcher/util/PackageManagerHelper;->getApplicationInfo(Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/SecondaryDropTarget$a;->d:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v1, p0, Lcom/zui/launcher/SecondaryDropTarget$a;->a:Lcom/zui/launcher/DragSource;

    iput-object v1, v0, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    iget-object p0, p0, Lcom/zui/launcher/SecondaryDropTarget$a;->e:Lcom/zui/launcher/SecondaryDropTarget;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v0, v2}, Lcom/zui/launcher/DragSource;->onDropCompleted(Landroid/view/View;Lcom/zui/launcher/DropTarget$DragObject;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/SecondaryDropTarget$a;->b()V

    :goto_0
    return-void
.end method
