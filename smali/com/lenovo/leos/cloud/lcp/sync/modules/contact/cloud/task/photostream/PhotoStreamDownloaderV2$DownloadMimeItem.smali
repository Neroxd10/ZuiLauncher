.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2$DownloadMimeItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadMimeItem"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2$DownloadMimeItem;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2$DownloadMimeItem;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2$DownloadMimeItem;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getObjectKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2$DownloadMimeItem;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2$DownloadMimeItem;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getSid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamDownloaderV2$DownloadMimeItem;->a:Ljava/lang/String;

    return-object p0
.end method
