.class Lcom/zui/launcher/DownloadSpan$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DownloadSpan;->p0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/zui/launcher/DownloadSpan;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan$a;->b:Lcom/zui/launcher/DownloadSpan;

    iput-object p2, p0, Lcom/zui/launcher/DownloadSpan$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$a;->b:Lcom/zui/launcher/DownloadSpan;

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/zui/launcher/DownloadSpan;->r(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;)V

    return-void
.end method
