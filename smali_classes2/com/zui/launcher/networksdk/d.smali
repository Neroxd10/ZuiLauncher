.class public final synthetic Lcom/zui/launcher/networksdk/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/networksdk/DownloadManager;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/networksdk/DownloadManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/networksdk/d;->a:Lcom/zui/launcher/networksdk/DownloadManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/d;->a:Lcom/zui/launcher/networksdk/DownloadManager;

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->cleanupAfterDeath()V

    return-void
.end method
