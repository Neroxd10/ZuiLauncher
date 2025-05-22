.class Lcom/zui/launcher/networksdk/api/FileDownLoad$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networksdk/api/FileDownLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;

.field public b:Z

.field c:Lcom/zui/launcher/networksdk/download/Downloader;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/networksdk/api/FileDownLoad;Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/networksdk/download/Downloader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->a:Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->b:Z

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->c:Lcom/zui/launcher/networksdk/download/Downloader;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->d(Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;)V

    invoke-virtual {p0, p3}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->g(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->f(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->e(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->e(Z)V

    :goto_0
    invoke-virtual {p0, p5}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->h(Lcom/zui/launcher/networksdk/download/Downloader;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->a:Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;

    return-object p0
.end method

.method public b()Lcom/zui/launcher/networksdk/download/Downloader;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->c:Lcom/zui/launcher/networksdk/download/Downloader;

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->b:Z

    return p0
.end method

.method public d(Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->a:Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->b:Z

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public h(Lcom/zui/launcher/networksdk/download/Downloader;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->c:Lcom/zui/launcher/networksdk/download/Downloader;

    return-void
.end method
