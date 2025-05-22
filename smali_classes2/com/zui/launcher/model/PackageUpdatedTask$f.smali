.class Lcom/zui/launcher/model/PackageUpdatedTask$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherModel$CallbackTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/model/PackageUpdatedTask;->execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Lcom/zui/launcher/model/PackageUpdatedTask;


# direct methods
.method constructor <init>(Lcom/zui/launcher/model/PackageUpdatedTask;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/model/PackageUpdatedTask$f;->b:Lcom/zui/launcher/model/PackageUpdatedTask;

    iput-object p2, p0, Lcom/zui/launcher/model/PackageUpdatedTask$f;->a:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/PackageUpdatedTask$f;->a:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/zui/launcher/model/PackageUpdatedTask$f;->b:Lcom/zui/launcher/model/PackageUpdatedTask;

    invoke-static {p0}, Lcom/zui/launcher/model/PackageUpdatedTask;->g(Lcom/zui/launcher/model/PackageUpdatedTask;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->removePendingBindItems(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-void
.end method
