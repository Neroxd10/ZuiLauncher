.class public final synthetic Lcom/zui/quickstep/views/f0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView$l;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView$l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/f0;->a:Lcom/zui/quickstep/views/RecentsView$l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/f0;->a:Lcom/zui/quickstep/views/RecentsView$l;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView$l;->g()V

    return-void
.end method
