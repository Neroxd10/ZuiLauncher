.class public final synthetic Lcom/zui/launcher/views/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/views/ArrowTipView;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/views/ArrowTipView;IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/views/d;->a:Lcom/zui/launcher/views/ArrowTipView;

    iput p2, p0, Lcom/zui/launcher/views/d;->b:I

    iput p3, p0, Lcom/zui/launcher/views/d;->c:I

    iput p4, p0, Lcom/zui/launcher/views/d;->d:I

    iput p5, p0, Lcom/zui/launcher/views/d;->e:I

    iput p6, p0, Lcom/zui/launcher/views/d;->f:I

    iput p7, p0, Lcom/zui/launcher/views/d;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/views/d;->a:Lcom/zui/launcher/views/ArrowTipView;

    iget v1, p0, Lcom/zui/launcher/views/d;->b:I

    iget v2, p0, Lcom/zui/launcher/views/d;->c:I

    iget v3, p0, Lcom/zui/launcher/views/d;->d:I

    iget v4, p0, Lcom/zui/launcher/views/d;->e:I

    iget v5, p0, Lcom/zui/launcher/views/d;->f:I

    iget v6, p0, Lcom/zui/launcher/views/d;->g:I

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/views/ArrowTipView;->e(IIIIII)V

    return-void
.end method
