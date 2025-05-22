.class public final synthetic Lcom/zui/launcher/networksdk/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/networksdk/DownloadManager;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/networksdk/DownloadManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/networksdk/a;->a:Lcom/zui/launcher/networksdk/DownloadManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/a;->a:Lcom/zui/launcher/networksdk/DownloadManager;

    invoke-static {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->o(Lcom/zui/launcher/networksdk/DownloadManager;)V

    return-void
.end method
