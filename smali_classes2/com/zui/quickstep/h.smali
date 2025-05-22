.class public final synthetic Lcom/zui/quickstep/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

.field public final synthetic b:Lcom/android/systemui/shared/system/TransactionCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/android/systemui/shared/system/TransactionCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/h;->a:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    iput-object p2, p0, Lcom/zui/quickstep/h;->b:Lcom/android/systemui/shared/system/TransactionCompat;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/h;->a:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    iget-object p0, p0, Lcom/zui/quickstep/h;->b:Lcom/android/systemui/shared/system/TransactionCompat;

    invoke-static {v0, p0, p1}, Lcom/zui/quickstep/t4;->f(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/android/systemui/shared/system/TransactionCompat;Landroid/animation/ValueAnimator;)V

    return-void
.end method
