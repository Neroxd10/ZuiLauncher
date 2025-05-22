.class public final synthetic Lcom/zui/quickstep/views/x0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsViewForPad;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsViewForPad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/x0;->a:Lcom/zui/quickstep/views/RecentsViewForPad;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/x0;->a:Lcom/zui/quickstep/views/RecentsViewForPad;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->s(Lcom/zui/quickstep/views/RecentsViewForPad;Ljava/util/ArrayList;)V

    return-void
.end method
