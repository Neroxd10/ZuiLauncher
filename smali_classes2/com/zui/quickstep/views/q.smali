.class public final synthetic Lcom/zui/quickstep/views/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView$e;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView$e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/q;->a:Lcom/zui/quickstep/views/RecentsView$e;

    iput p2, p0, Lcom/zui/quickstep/views/q;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/q;->a:Lcom/zui/quickstep/views/RecentsView$e;

    iget p0, p0, Lcom/zui/quickstep/views/q;->b:I

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/RecentsView$e;->d(I)V

    return-void
.end method
