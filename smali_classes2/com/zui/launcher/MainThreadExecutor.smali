.class public Lcom/zui/launcher/MainThreadExecutor;
.super Lcom/zui/launcher/util/LooperExecutor;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    return-void
.end method
