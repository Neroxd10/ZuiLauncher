.class Lcom/zui/launcher/LauncherModel$x;
.super Lcom/zui/launcher/model/BaseModelUpdateTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->refreshAndBindWidgetsAndShortcuts(Lcom/zui/launcher/util/PackageUserKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/zui/launcher/util/PackageUserKey;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/util/PackageUserKey;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$x;->f:Lcom/zui/launcher/util/PackageUserKey;

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
    .locals 1

    iget-object p3, p2, Lcom/zui/launcher/model/BgDataModel;->widgetsModel:Lcom/zui/launcher/model/WidgetsModel;

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$x;->f:Lcom/zui/launcher/util/PackageUserKey;

    invoke-virtual {p3, p1, v0}, Lcom/zui/launcher/model/WidgetsModel;->update(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/util/PackageUserKey;)Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/model/BaseModelUpdateTask;->bindUpdatedWidgets(Lcom/zui/launcher/model/BgDataModel;)V

    return-void
.end method
