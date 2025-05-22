.class Lcom/zui/launcher/LauncherModel$y$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel$y;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherModel$y;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel$y;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel$y$a;->a:Lcom/zui/launcher/LauncherModel$y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$y$a;->a:Lcom/zui/launcher/LauncherModel$y;

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$y;->b:Lcom/zui/launcher/LauncherModel;

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$y;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/zui/launcher/LauncherModel;->c(Lcom/zui/launcher/LauncherModel;Ljava/lang/String;)V

    return-void
.end method
