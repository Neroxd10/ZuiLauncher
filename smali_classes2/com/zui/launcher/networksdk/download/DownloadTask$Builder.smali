.class public Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networksdk/download/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/zui/launcher/networksdk/download/DownloadTaskListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->f:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->f:I

    return p0
.end method

.method static synthetic f(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->g:Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    return-object p0
.end method

.method static synthetic g(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/zui/launcher/networksdk/download/DownloadTask;
    .locals 2

    new-instance v0, Lcom/zui/launcher/networksdk/download/DownloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/networksdk/download/DownloadTask;-><init>(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;Lcom/zui/launcher/networksdk/download/DownloadTask$a;)V

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setDownloadStatus(I)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;
    .locals 0

    iput p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->f:I

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setFileType(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setListener(Lcom/zui/launcher/networksdk/download/DownloadTaskListener;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->g:Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    return-object p0
.end method

.method public setSaveDirPath(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->b:Ljava/lang/String;

    return-object p0
.end method
