.class public final synthetic Lcom/zui/launcher/globalsearch/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/zui/launcher/globalsearch/BaseDataModel;

.field public final synthetic e:Lcom/zui/launcher/GlobalSearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Landroid/content/Context;ZLcom/zui/launcher/globalsearch/BaseDataModel;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/s;->a:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/s;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/zui/launcher/globalsearch/s;->c:Z

    iput-object p4, p0, Lcom/zui/launcher/globalsearch/s;->d:Lcom/zui/launcher/globalsearch/BaseDataModel;

    iput-object p5, p0, Lcom/zui/launcher/globalsearch/s;->e:Lcom/zui/launcher/GlobalSearchView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/s;->a:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/s;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/zui/launcher/globalsearch/s;->c:Z

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/s;->d:Lcom/zui/launcher/globalsearch/BaseDataModel;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/s;->e:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->e(Landroid/content/Context;ZLcom/zui/launcher/globalsearch/BaseDataModel;Lcom/zui/launcher/GlobalSearchView;)V

    return-void
.end method
