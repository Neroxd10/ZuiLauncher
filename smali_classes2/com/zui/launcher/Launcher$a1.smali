.class Lcom/zui/launcher/Launcher$a1;
.super Lcom/zui/launcher/SystemSettingObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->f2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$a1;->d:Lcom/zui/launcher/Launcher;

    invoke-direct {p0, p2, p3, p4}, Lcom/zui/launcher/SystemSettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/Launcher$a1;->d:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->R(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/StartAppParams;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/zui/launcher/Launcher$a1;->d:Lcom/zui/launcher/Launcher;

    iget-object v0, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher$a1;->d:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/Launcher$a1;->d:Lcom/zui/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->setDoingCloseAnim(Z)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v2, v1, :cond_2

    aget-object v2, v0, v3

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v0, v0, v3

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move p1, v3

    goto :goto_0

    :cond_2
    array-length p1, v0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    aget-object p1, v0, v1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    aget-object p1, v0, v1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    aget-object p1, v0, v3

    const-string v0, "com.zui.utouchcore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    move-wide v0, v1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iget-object v2, p0, Lcom/zui/launcher/Launcher$a1;->d:Lcom/zui/launcher/Launcher;

    iget v6, v2, Lcom/zui/launcher/Launcher;->wallpaper_alpha:I

    invoke-static {v2, v6}, Lcom/zui/launcher/Launcher;->T(Lcom/zui/launcher/Launcher;I)I

    iget-object v2, p0, Lcom/zui/launcher/Launcher$a1;->d:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/zui/launcher/Launcher;->setWindowBlurValue(I)V

    const-wide/16 v6, 0xd2

    cmp-long v2, v4, v6

    if-gtz v2, :cond_4

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/Launcher$a1;->d:Lcom/zui/launcher/Launcher;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/zui/launcher/Launcher;->V(Lcom/zui/launcher/Launcher;Ljava/lang/Long;Z)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/Launcher$a1;->d:Lcom/zui/launcher/Launcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/launcher/Launcher;->S(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/StartAppParams;)Lcom/zui/launcher/StartAppParams;

    iget-object p1, p0, Lcom/zui/launcher/Launcher$a1;->d:Lcom/zui/launcher/Launcher;

    invoke-static {p1, v0}, Lcom/zui/launcher/Launcher;->U(Lcom/zui/launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    iget-object p0, p0, Lcom/zui/launcher/Launcher$a1;->d:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, v3}, Lcom/zui/launcher/Launcher;->setDoingCloseAnim(Z)V

    :cond_6
    :goto_2
    return-void
.end method
