.class Lcom/zui/launcher/networksdk/api/ImageLoader$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networksdk/api/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;

.field private b:Lcom/zui/launcher/networksdk/api/ImageLoader$b;

.field private c:Lcom/zui/launcher/networksdk/download/Downloader;

.field private d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/networksdk/api/ImageLoader;Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;Lcom/zui/launcher/networksdk/api/ImageLoader$b;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->a:Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;

    iput-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->b:Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    iput-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->c:Lcom/zui/launcher/networksdk/download/Downloader;

    iput-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->d:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->e:I

    invoke-virtual {p0, p2}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->g(Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;)V

    invoke-virtual {p0, p3}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->h(Lcom/zui/launcher/networksdk/api/ImageLoader$b;)V

    invoke-virtual {p0, p5}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->i(Ljava/lang/String;)V

    iput p4, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->e:I

    new-instance p2, Lcom/zui/launcher/networksdk/download/Downloader;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/api/ImageLoader;->a(Lcom/zui/launcher/networksdk/api/ImageLoader;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p3, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/zui/launcher/networksdk/api/ImageLoader;->b()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p1, p3, p5, p4}, Lcom/zui/launcher/networksdk/download/Downloader;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->f(Lcom/zui/launcher/networksdk/download/Downloader;)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/networksdk/api/ImageLoader$c;)Lcom/zui/launcher/networksdk/api/ImageLoader$b;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->b:Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/zui/launcher/networksdk/download/Downloader;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->c:Lcom/zui/launcher/networksdk/download/Downloader;

    return-object p0
.end method

.method public c()Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->a:Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;

    return-object p0
.end method

.method public d()Lcom/zui/launcher/networksdk/api/ImageLoader$b;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->b:Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public f(Lcom/zui/launcher/networksdk/download/Downloader;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->c:Lcom/zui/launcher/networksdk/download/Downloader;

    return-void
.end method

.method public g(Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->a:Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;

    return-void
.end method

.method public h(Lcom/zui/launcher/networksdk/api/ImageLoader$b;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->b:Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->d:Ljava/lang/String;

    return-void
.end method
