.class Lcom/zui/launcher/XDockView$p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/XDockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "p"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/zui/launcher/XDockView;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/XDockView;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockView$p;->b:Lcom/zui/launcher/XDockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/XDockView$p;->a:I

    iput p2, p0, Lcom/zui/launcher/XDockView$p;->a:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/XDockView$p;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/XDockView$p;->b(I)V

    return-void
.end method

.method private b(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/XDockView$p;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/XDockView$p;->b:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->c(Lcom/zui/launcher/XDockView;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/XDockView$p;->b:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->q(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/Launcher;

    move-result-object v1

    iget v2, p0, Lcom/zui/launcher/XDockView$p;->a:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/XDockView;->d(Lcom/zui/launcher/XDockView;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/XDockView$p;->b:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->c(Lcom/zui/launcher/XDockView;)Landroid/widget/Toast;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/XDockView$p;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/XDockView$p;->b:Lcom/zui/launcher/XDockView;

    invoke-static {p0}, Lcom/zui/launcher/XDockView;->c(Lcom/zui/launcher/XDockView;)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
