.class public final synthetic Lcom/zui/launcher/views/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/views/Snackbar;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/views/Snackbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/views/q;->a:Lcom/zui/launcher/views/Snackbar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/q;->a:Lcom/zui/launcher/views/Snackbar;

    invoke-static {p0}, Lcom/zui/launcher/views/Snackbar;->a(Lcom/zui/launcher/views/Snackbar;)V

    return-void
.end method
