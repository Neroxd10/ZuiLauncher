.class public final synthetic Lcom/zui/launcher/globalsearch/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/net/NetworkInfo;

.field public final synthetic d:Lcom/zui/launcher/globalsearch/BaseDataModel;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Landroid/content/Context;Landroid/net/NetworkInfo;Lcom/zui/launcher/globalsearch/BaseDataModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/t;->a:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/t;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/t;->c:Landroid/net/NetworkInfo;

    iput-object p4, p0, Lcom/zui/launcher/globalsearch/t;->d:Lcom/zui/launcher/globalsearch/BaseDataModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/t;->a:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/t;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/t;->c:Landroid/net/NetworkInfo;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/t;->d:Lcom/zui/launcher/globalsearch/BaseDataModel;

    invoke-virtual {v0, v1, v2, p0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->c(Landroid/content/Context;Landroid/net/NetworkInfo;Lcom/zui/launcher/globalsearch/BaseDataModel;)V

    return-void
.end method
