.class Lcom/zui/launcher/DownloadSpan$l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/DownloadSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/ItemInfo;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/DownloadSpan$l;->a:Lcom/zui/launcher/ItemInfo;

    iput-object p3, p0, Lcom/zui/launcher/DownloadSpan$l;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/launcher/DownloadSpan$l;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/zui/launcher/DownloadSpan$l;->d:Ljava/lang/String;

    xor-int/lit8 p1, p6, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/DownloadSpan$l;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/DownloadSpan$l;)Lcom/zui/launcher/ItemInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$l;->a:Lcom/zui/launcher/ItemInfo;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/DownloadSpan$l;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/DownloadSpan$l;->e:Z

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher/DownloadSpan$l;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$l;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/DownloadSpan$l;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$l;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan$l;->a:Lcom/zui/launcher/ItemInfo;

    iget-object v1, v1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t packagename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan$l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \t  url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan$l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \t   isNew = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/DownloadSpan$l;->e:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  \t  file = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$l;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
