.class public final synthetic Lcom/zui/quickstep/u0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/shared/system/InputConsumerController$InputListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/RecentsAnimationWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/RecentsAnimationWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/u0;->a:Lcom/zui/quickstep/RecentsAnimationWrapper;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/u0;->a:Lcom/zui/quickstep/RecentsAnimationWrapper;

    invoke-static {p0, p1}, Lcom/zui/quickstep/RecentsAnimationWrapper;->d(Lcom/zui/quickstep/RecentsAnimationWrapper;Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method
