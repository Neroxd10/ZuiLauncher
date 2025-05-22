.class Lcom/zui/launcher/Workspace$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$m;->a:Lcom/zui/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/zui/launcher/Alarm;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/Workspace$m;->a:Lcom/zui/launcher/Workspace;

    iget-object p1, p1, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/Workspace$m;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->isLeosReordering()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Workspace$m;->a:Lcom/zui/launcher/Workspace;

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->A2(Z)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Workspace$m;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->reorderItemAllScreen()V

    return-void
.end method
