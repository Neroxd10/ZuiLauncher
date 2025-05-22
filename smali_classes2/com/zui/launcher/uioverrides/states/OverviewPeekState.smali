.class public Lcom/zui/launcher/uioverrides/states/OverviewPeekState;
.super Lcom/zui/launcher/uioverrides/states/OverviewState;
.source ""


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/uioverrides/states/OverviewState;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getOverviewScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getOverviewScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/LauncherState;->getOverviewScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->translationX:F

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0705a6

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->translationX:F

    return-object p0
.end method

.method public prepareForAtomicAnimation(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;)V
    .locals 0

    sget-object p1, Lcom/zui/launcher/LauncherState;->OVERVIEW_PEEK:Lcom/zui/launcher/LauncherState;

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p2, p0, :cond_0

    const/16 p0, 0x9

    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0, p1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x7

    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_7:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0, p1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method
