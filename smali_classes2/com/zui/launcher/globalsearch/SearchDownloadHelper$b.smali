.class Lcom/zui/launcher/globalsearch/SearchDownloadHelper$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->h(Landroid/content/Context;ILcom/zui/launcher/globalsearch/BaseDataModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;

.field final synthetic b:Lcom/zui/launcher/globalsearch/BaseDataModel;

.field final synthetic c:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/globalsearch/BaseDataModel;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$b;->c:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$b;->a:Lcom/zui/launcher/Launcher;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$b;->b:Lcom/zui/launcher/globalsearch/BaseDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$b;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView()V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$b;->c:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    iget-object p2, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$b;->a:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$b;->b:Lcom/zui/launcher/globalsearch/BaseDataModel;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getGlobalSearchView()Lcom/zui/launcher/GlobalSearchView;

    move-result-object v0

    invoke-static {p1, p2, p0, v0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->a(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Landroid/content/Context;Lcom/zui/launcher/globalsearch/BaseDataModel;Lcom/zui/launcher/GlobalSearchView;)V

    return-void
.end method
