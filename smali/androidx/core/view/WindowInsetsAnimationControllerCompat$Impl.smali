.class Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method finish(Z)V
    .locals 0

    return-void
.end method

.method public getCurrentAlpha()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentFraction()F
    .locals 0
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentInsets()Landroidx/core/graphics/Insets;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object p0
.end method

.method public getHiddenStateInsets()Landroidx/core/graphics/Insets;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object p0
.end method

.method public getShownStateInsets()Landroidx/core/graphics/Insets;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object p0
.end method

.method public getTypes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method isCancelled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isFinished()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReady()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setInsetsAndAlpha(Landroidx/core/graphics/Insets;FF)V
    .locals 0
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    return-void
.end method
