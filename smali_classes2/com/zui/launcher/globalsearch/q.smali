.class public final synthetic Lcom/zui/launcher/globalsearch/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkReadyCallBack;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/zui/launcher/globalsearch/BaseDataModel;

.field public final synthetic d:Lcom/zui/launcher/GlobalSearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Landroid/content/Context;Lcom/zui/launcher/globalsearch/BaseDataModel;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/q;->a:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/q;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/q;->c:Lcom/zui/launcher/globalsearch/BaseDataModel;

    iput-object p4, p0, Lcom/zui/launcher/globalsearch/q;->d:Lcom/zui/launcher/GlobalSearchView;

    return-void
.end method


# virtual methods
.method public final isNetworkAvailable(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/q;->a:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/q;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/q;->c:Lcom/zui/launcher/globalsearch/BaseDataModel;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/q;->d:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->f(Landroid/content/Context;Lcom/zui/launcher/globalsearch/BaseDataModel;Lcom/zui/launcher/GlobalSearchView;Z)V

    return-void
.end method
