.class public final synthetic Lcom/zui/quickstep/inputconsumers/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/quickstep/util/MotionPauseDetector$OnMotionPauseListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/zui/quickstep/ActivityControlHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;Landroid/content/Context;Lcom/zui/quickstep/ActivityControlHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/k;->a:Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/k;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/zui/quickstep/inputconsumers/k;->c:Lcom/zui/quickstep/ActivityControlHelper;

    return-void
.end method


# virtual methods
.method public final onMotionPauseChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/k;->a:Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/k;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/k;->c:Lcom/zui/quickstep/ActivityControlHelper;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;->b(Landroid/content/Context;Lcom/zui/quickstep/ActivityControlHelper;Z)V

    return-void
.end method
