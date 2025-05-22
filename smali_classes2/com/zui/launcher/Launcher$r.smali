.class Lcom/zui/launcher/Launcher$r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->initFolderOtherApps(Ljava/lang/String;ILjava/util/LinkedHashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$r;->c:Lcom/zui/launcher/Launcher;

    iput p2, p0, Lcom/zui/launcher/Launcher$r;->a:I

    iput-object p3, p0, Lcom/zui/launcher/Launcher$r;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/Launcher$r;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v1

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->id:I

    iget v2, p0, Lcom/zui/launcher/Launcher$r;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$r;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/Launcher;->l0(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/fenlei/FenLeiPanelView;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/Launcher$r;->c:Lcom/zui/launcher/Launcher;

    iget-object v3, p0, Lcom/zui/launcher/Launcher$r;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->setup(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/folder/Folder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/Launcher$r;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/Launcher;->l0(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/fenlei/FenLeiPanelView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/zui/launcher/Launcher$r;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/category/AllAppsCategory;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/category/AllAppsCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/launcher/category/AllAppsCategory;->trackEventShowPanel(Lcom/zui/launcher/folder/Folder;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher$r;->c:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->l0(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/fenlei/FenLeiPanelView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->bringToFront()V

    :cond_0
    return-void
.end method
