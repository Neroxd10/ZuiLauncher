.class public final synthetic Lcom/zui/launcher/views/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/views/FloatingIconView;

.field public final synthetic b:Landroid/os/CancellationSignal;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/views/FloatingIconView;Landroid/os/CancellationSignal;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/views/l;->a:Lcom/zui/launcher/views/FloatingIconView;

    iput-object p2, p0, Lcom/zui/launcher/views/l;->b:Landroid/os/CancellationSignal;

    iput-object p3, p0, Lcom/zui/launcher/views/l;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/views/l;->a:Lcom/zui/launcher/views/FloatingIconView;

    iget-object v1, p0, Lcom/zui/launcher/views/l;->b:Landroid/os/CancellationSignal;

    iget-object p0, p0, Lcom/zui/launcher/views/l;->c:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/views/FloatingIconView;->q(Landroid/os/CancellationSignal;Landroid/view/View;)V

    return-void
.end method
