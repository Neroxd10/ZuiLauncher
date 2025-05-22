.class public final synthetic Lcom/zui/launcher/views/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/views/ArrowTipView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/views/ArrowTipView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/views/b;->a:Lcom/zui/launcher/views/ArrowTipView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/b;->a:Lcom/zui/launcher/views/ArrowTipView;

    invoke-virtual {p0}, Lcom/zui/launcher/views/ArrowTipView;->f()V

    return-void
.end method
