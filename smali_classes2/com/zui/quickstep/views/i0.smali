.class public final synthetic Lcom/zui/quickstep/views/i0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/i0;->a:Lcom/zui/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/i0;->a:Lcom/zui/quickstep/views/RecentsView;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->j0(Ljava/lang/Integer;)V

    return-void
.end method
