.class public Lcom/zui/launcher/networksdk/DownloadEntity;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->b:Ljava/lang/Long;

    iput-object p3, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->c:Ljava/lang/Long;

    iput-object p4, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->g:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCompletedSize()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public getDownloadId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadStatus()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getSaveDirPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalSize()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setCompletedSize(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->c:Ljava/lang/Long;

    return-void
.end method

.method public setDownloadId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->a:Ljava/lang/String;

    return-void
.end method

.method public setDownloadStatus(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->g:Ljava/lang/Integer;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->f:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->h:Ljava/lang/String;

    return-void
.end method

.method public setSaveDirPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->e:Ljava/lang/String;

    return-void
.end method

.method public setTotalSize(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->b:Ljava/lang/Long;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/DownloadEntity;->d:Ljava/lang/String;

    return-void
.end method
