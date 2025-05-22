.class Lcom/zui/launcher/XDockView$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockView;->doStack()V
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

    iput-object p1, p0, Lcom/zui/launcher/XDockView$h;->a:Lcom/zui/launcher/XDockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/XDockView$h;->a:Lcom/zui/launcher/XDockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    iget-object v0, p0, Lcom/zui/launcher/XDockView$h;->a:Lcom/zui/launcher/XDockView;

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->updateSelectCount()V

    iget-object p0, p0, Lcom/zui/launcher/XDockView$h;->a:Lcom/zui/launcher/XDockView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zui/launcher/XDockView;->o(Lcom/zui/launcher/XDockView;Z)Z

    return-void
.end method
