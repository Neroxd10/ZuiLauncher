.class public final synthetic Lcom/zui/launcher/views/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lcom/zui/launcher/views/Snackbar;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lcom/zui/launcher/views/Snackbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/views/s;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/zui/launcher/views/s;->b:Lcom/zui/launcher/views/Snackbar;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/s;->a:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/zui/launcher/views/s;->b:Lcom/zui/launcher/views/Snackbar;

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/views/Snackbar;->b(Ljava/lang/Runnable;Lcom/zui/launcher/views/Snackbar;Landroid/view/View;)V

    return-void
.end method
