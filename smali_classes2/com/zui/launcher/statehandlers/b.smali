.class public final synthetic Lcom/zui/launcher/statehandlers/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/statehandlers/DepthController;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/statehandlers/DepthController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/statehandlers/b;->a:Lcom/zui/launcher/statehandlers/DepthController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/statehandlers/b;->a:Lcom/zui/launcher/statehandlers/DepthController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/statehandlers/DepthController;->i(Ljava/lang/Boolean;)V

    return-void
.end method
