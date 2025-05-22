.class public Lcom/zui/launcher/XReaperGlobal$XReaperGlobalLOG;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/XReaperGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XReaperGlobalLOG"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/zui/launcher/XReaperGlobal;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/zui/launcher/XReaperGlobal;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->isDebugApp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/XReaperGlobal;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
