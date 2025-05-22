.class public final synthetic Lcom/zui/launcher/networksdk/download/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/networksdk/download/DownloadTask$b;

.field public final synthetic b:Lretrofit2/Response;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/networksdk/download/DownloadTask$b;Lretrofit2/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask$b;

    iput-object p2, p0, Lcom/zui/launcher/networksdk/download/a;->b:Lretrofit2/Response;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/a;->a:Lcom/zui/launcher/networksdk/download/DownloadTask$b;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/a;->b:Lretrofit2/Response;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/networksdk/download/DownloadTask$b;->a(Lretrofit2/Response;)V

    return-void
.end method
