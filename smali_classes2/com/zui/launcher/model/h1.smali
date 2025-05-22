.class public final synthetic Lcom/zui/launcher/model/h1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;

.field public final synthetic b:Lcom/zui/launcher/pm/PackageInstallInfo;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;Lcom/zui/launcher/pm/PackageInstallInfo;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/h1;->a:Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;

    iput-object p2, p0, Lcom/zui/launcher/model/h1;->b:Lcom/zui/launcher/pm/PackageInstallInfo;

    iput-object p3, p0, Lcom/zui/launcher/model/h1;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/model/h1;->a:Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;

    iget-object v1, p0, Lcom/zui/launcher/model/h1;->b:Lcom/zui/launcher/pm/PackageInstallInfo;

    iget-object p0, p0, Lcom/zui/launcher/model/h1;->c:Ljava/util/ArrayList;

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;->h(Lcom/zui/launcher/pm/PackageInstallInfo;Ljava/util/ArrayList;Lcom/zui/launcher/WorkspaceItemInfo;)V

    return-void
.end method
