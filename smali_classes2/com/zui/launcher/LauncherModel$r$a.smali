.class Lcom/zui/launcher/LauncherModel$r$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel$r;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/WorkspaceItemInfo;

.field final synthetic b:Lcom/zui/launcher/util/IntArray;

.field final synthetic c:[I

.field final synthetic d:Z

.field final synthetic e:Lcom/zui/launcher/LauncherModel$r;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel$r;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/util/IntArray;[IZ)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel$r$a;->e:Lcom/zui/launcher/LauncherModel$r;

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$r$a;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iput-object p3, p0, Lcom/zui/launcher/LauncherModel$r$a;->b:Lcom/zui/launcher/util/IntArray;

    iput-object p4, p0, Lcom/zui/launcher/LauncherModel$r$a;->c:[I

    iput-boolean p5, p0, Lcom/zui/launcher/LauncherModel$r$a;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$r$a;->e:Lcom/zui/launcher/LauncherModel$r;

    iget-object v0, v0, Lcom/zui/launcher/LauncherModel$r;->f:Lcom/zui/launcher/LauncherModel;

    iget-object v0, v0, Lcom/zui/launcher/LauncherModel;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$r$a;->e:Lcom/zui/launcher/LauncherModel$r;

    iget-object v2, v0, Lcom/zui/launcher/LauncherModel$r;->d:Lcom/zui/launcher/LauncherModel$Callbacks;

    if-ne v2, v1, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/LauncherModel$r$a;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v3, v0, Lcom/zui/launcher/LauncherModel$r;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/zui/launcher/LauncherModel$r$a;->b:Lcom/zui/launcher/util/IntArray;

    iget-object v5, p0, Lcom/zui/launcher/LauncherModel$r$a;->c:[I

    iget-boolean v6, p0, Lcom/zui/launcher/LauncherModel$r$a;->d:Z

    invoke-interface/range {v1 .. v6}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindSearchedApp(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Lcom/zui/launcher/util/IntArray;[IZ)V

    :cond_1
    return-void
.end method
