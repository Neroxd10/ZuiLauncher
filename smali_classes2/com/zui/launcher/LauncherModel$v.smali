.class Lcom/zui/launcher/LauncherModel$v;
.super Lcom/zui/launcher/model/BaseModelUpdateTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->onWidgetLabelsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Ljava/util/HashSet;

.field final synthetic g:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel;Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$v;->f:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/zui/launcher/LauncherModel$v;->g:Landroid/os/UserHandle;

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
    .locals 2

    iget-object p3, p2, Lcom/zui/launcher/model/BgDataModel;->widgetsModel:Lcom/zui/launcher/model/WidgetsModel;

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$v;->f:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$v;->g:Landroid/os/UserHandle;

    invoke-virtual {p3, v0, v1, p1}, Lcom/zui/launcher/model/WidgetsModel;->onPackageIconsUpdated(Ljava/util/Set;Landroid/os/UserHandle;Lcom/zui/launcher/LauncherAppState;)V

    invoke-virtual {p0, p2}, Lcom/zui/launcher/model/BaseModelUpdateTask;->bindUpdatedWidgets(Lcom/zui/launcher/model/BgDataModel;)V

    return-void
.end method
