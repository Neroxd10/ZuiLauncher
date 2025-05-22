.class public final synthetic Lcom/zui/quickstep/views/d0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/d0;->a:Lcom/zui/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/d0;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-static {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->e0(Lcom/zui/quickstep/views/RecentsView;I)V

    return-void
.end method
