.class public final synthetic Lcom/zui/launcher/globalsearch/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

.field public final synthetic b:Lcom/zui/launcher/networksdk/OKHttpUtils;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/zui/launcher/globalsearch/BaseDataModel;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Lcom/zui/launcher/networksdk/OKHttpUtils;Landroid/content/Context;Lcom/zui/launcher/globalsearch/BaseDataModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/r;->a:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/r;->b:Lcom/zui/launcher/networksdk/OKHttpUtils;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/r;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/zui/launcher/globalsearch/r;->d:Lcom/zui/launcher/globalsearch/BaseDataModel;

    return-void
.end method


# virtual methods
.method public final actionByNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/r;->a:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/r;->b:Lcom/zui/launcher/networksdk/OKHttpUtils;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/r;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/r;->d:Lcom/zui/launcher/globalsearch/BaseDataModel;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->d(Lcom/zui/launcher/networksdk/OKHttpUtils;Landroid/content/Context;Lcom/zui/launcher/globalsearch/BaseDataModel;Landroid/net/NetworkInfo;)V

    return-void
.end method
