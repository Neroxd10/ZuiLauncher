.class public final synthetic Lcom/zui/quickstep/views/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView$e;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/t;->a:Lcom/zui/quickstep/views/RecentsView$e;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/t;->a:Lcom/zui/quickstep/views/RecentsView$e;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView$e;->e(Ljava/lang/Integer;)V

    return-void
.end method
