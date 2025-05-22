.class public interface abstract Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/ActivityControlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HomeAnimationFactory"
.end annotation


# virtual methods
.method public abstract createActivityAnimationToHome()Lcom/zui/launcher/anim/AnimatorPlaybackController;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public getFloatingView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getWindowTargetRect()Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public playAtomicAnimation(F)V
    .locals 0

    return-void
.end method
