.class public final synthetic Lcom/zui/launcher/statehandlers/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/statehandlers/DepthController$b;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/statehandlers/DepthController$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/statehandlers/a;->a:Lcom/zui/launcher/statehandlers/DepthController$b;

    iput-object p2, p0, Lcom/zui/launcher/statehandlers/a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/statehandlers/a;->a:Lcom/zui/launcher/statehandlers/DepthController$b;

    iget-object p0, p0, Lcom/zui/launcher/statehandlers/a;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/statehandlers/DepthController$b;->a(Landroid/view/View;)V

    return-void
.end method
