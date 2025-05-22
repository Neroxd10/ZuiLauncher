.class Lcom/zui/launcher/XDockView$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/XDockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/XDockView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockView$g;->a:Lcom/zui/launcher/XDockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/zui/launcher/Alarm;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/XDockView$g;->a:Lcom/zui/launcher/XDockView;

    invoke-static {p1}, Lcom/zui/launcher/XDockView;->p(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/XDockView$g;->a:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->s(Lcom/zui/launcher/XDockView;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/XDockView$g;->a:Lcom/zui/launcher/XDockView;

    invoke-static {p0}, Lcom/zui/launcher/XDockView;->t(Lcom/zui/launcher/XDockView;)[I

    move-result-object p0

    const/4 v1, 0x0

    aget p0, p0, v1

    const/16 v1, 0x96

    invoke-virtual {p1, v0, p0, v1}, Lcom/zui/launcher/XDockViewLayout;->animateItemToPosition(Landroid/view/View;II)Z

    return-void
.end method
