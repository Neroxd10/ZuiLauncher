.class public interface abstract Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/util/SwipeAnimationTargetSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SwipeAnimationListener"
.end annotation


# virtual methods
.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract onRecentsAnimationStart(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V
.end method

.method public onTaskAppeared(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V
    .locals 0

    return-void
.end method
