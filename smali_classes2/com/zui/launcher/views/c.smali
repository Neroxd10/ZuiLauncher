.class public final synthetic Lcom/zui/launcher/views/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/views/ArrowTipView;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/views/ArrowTipView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/views/c;->a:Lcom/zui/launcher/views/ArrowTipView;

    iput p2, p0, Lcom/zui/launcher/views/c;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/c;->a:Lcom/zui/launcher/views/ArrowTipView;

    iget p0, p0, Lcom/zui/launcher/views/c;->b:I

    invoke-virtual {v0, p0}, Lcom/zui/launcher/views/ArrowTipView;->c(I)V

    return-void
.end method
