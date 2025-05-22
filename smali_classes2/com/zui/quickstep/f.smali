.class public final synthetic Lcom/zui/quickstep/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/RecentsAnimationWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/RecentsAnimationWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/f;->a:Lcom/zui/quickstep/RecentsAnimationWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/f;->a:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAnimationWrapper;->enableInputConsumer()V

    return-void
.end method
