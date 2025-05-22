.class public final synthetic Lcom/zui/quickstep/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/n;->a:Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/n;->a:Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    invoke-static {p0}, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->b(Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V

    return-void
.end method
