.class public Lcom/zui/launcher/WorkspaceStateTransitionAnimation;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:Lcom/zui/launcher/Workspace;

.field private c:F


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    return-void
.end method

.method private a(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/CellLayout;ILcom/zui/launcher/LauncherState$PageAlphaProvider;Lcom/zui/launcher/anim/PropertySetter;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 2

    invoke-virtual {p4, p3}, Lcom/zui/launcher/LauncherState$PageAlphaProvider;->getPageAlpha(I)F

    move-result p0

    iget-boolean p1, p1, Lcom/zui/launcher/LauncherState;->hasWorkspacePageBackground:Z

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-float p1, p1

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p7}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playNonAtomicComponent()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/zui/launcher/CellLayout;->getScrimBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget-object v0, Lcom/zui/launcher/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->ZOOM_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p5, p3, v0, p1, v1}, Lcom/zui/launcher/anim/PropertySetter;->setInt(Ljava/lang/Object;Landroid/util/Property;ILandroid/animation/TimeInterpolator;)V

    :cond_1
    invoke-virtual {p7}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playAtomicOverviewScaleComponent()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    iget-object p3, p4, Lcom/zui/launcher/LauncherState$PageAlphaProvider;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p6, p1, p3}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p2}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p2

    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p5, p2, p3, p0, p1}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    :cond_2
    return-void
.end method

.method private b(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/PropertySetter;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    iget-object v0, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v12

    if-nez v12, :cond_0

    return-void

    :cond_0
    iget-object v0, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v9, v0}, Lcom/zui/launcher/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object v13

    iget-object v0, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v9, v0}, Lcom/zui/launcher/LauncherState;->getHotseatScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object v14

    iget-object v0, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v9, v0}, Lcom/zui/launcher/LauncherState;->getWorkspacePageIndicatorScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object v15

    iget v0, v13, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->scale:F

    iput v0, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->c:F

    iget-object v0, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getSearchState()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->LAUNCHER_ICON_SACLE:F

    iput v0, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->c:F

    :cond_1
    iget-object v0, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v9, v0}, Lcom/zui/launcher/LauncherState;->getWorkspacePageAlphaProvider(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$PageAlphaProvider;

    move-result-object v7

    iget-object v0, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/16 v16, 0x0

    move/from16 v5, v16

    :goto_0
    if-ge v5, v6, :cond_2

    iget-object v0, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/zui/launcher/CellLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v5

    move-object v4, v7

    move/from16 v17, v5

    move-object/from16 v5, p2

    move/from16 v18, v6

    move-object/from16 v6, p3

    move-object/from16 v19, v15

    move-object v15, v7

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/CellLayout;ILcom/zui/launcher/LauncherState$PageAlphaProvider;Lcom/zui/launcher/anim/PropertySetter;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V

    add-int/lit8 v5, v17, 0x1

    move-object v7, v15

    move/from16 v6, v18

    move-object/from16 v15, v19

    goto :goto_0

    :cond_2
    move-object/from16 v19, v15

    move-object v15, v7

    iget-object v0, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v9, v0}, Lcom/zui/launcher/LauncherState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result v0

    const/4 v1, 0x3

    iget-object v2, v15, Lcom/zui/launcher/LauncherState$PageAlphaProvider;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v1, v2}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playAtomicOverviewScaleComponent()Z

    move-result v2

    iget-object v3, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    invoke-virtual {v3}, Lcom/zui/launcher/Workspace;->getHotseat()Lcom/zui/launcher/Hotseat;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    sget-object v6, Lcom/zui/launcher/anim/Interpolators;->ZOOM_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v5, v6}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v6

    iget-object v7, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    sget-object v15, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget v5, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->c:F

    invoke-virtual {v10, v7, v15, v5, v6}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v3}, Lcom/zui/launcher/Hotseat;->getRotationMode()Lcom/zui/launcher/graphics/RotationMode;

    move-result-object v5

    iget-boolean v5, v5, Lcom/zui/launcher/graphics/RotationMode;->isTransposed:Z

    if-nez v5, :cond_3

    new-array v5, v4, [F

    iget-object v7, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v7

    aput v7, v5, v16

    iget-object v7, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v7

    const/4 v15, 0x1

    aput v7, v5, v15

    iget-object v7, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    invoke-virtual {v12, v7, v5}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F

    invoke-virtual {v12, v3, v5}, Lcom/zui/launcher/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[F)V

    aget v7, v5, v16

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setPivotX(F)V

    aget v5, v5, v15

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setPivotY(F)V

    :cond_3
    iget v5, v14, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->scale:F

    iget-object v7, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v7}, Lcom/zui/launcher/Launcher;->getSearchState()Z

    move-result v7

    if-eqz v7, :cond_4

    sget v5, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->LAUNCHER_ICON_SACLE:F

    :cond_4
    const/4 v7, 0x4

    invoke-virtual {v11, v7, v6}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v6

    sget-object v7, Lcom/zui/launcher/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {v10, v3, v7, v5, v6}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    and-int/lit8 v5, v0, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_5

    move v5, v6

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v10, v3, v5, v1}, Lcom/zui/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    iget-object v7, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v7}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lcom/zui/launcher/LauncherState;->EDITVIEW:Lcom/zui/launcher/LauncherState;

    if-eq v9, v7, :cond_6

    iget-object v6, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v6}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v6

    if-nez v6, :cond_7

    iget-object v6, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v6}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v10, v6, v5, v1}, Lcom/zui/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    goto :goto_2

    :cond_6
    iget-object v5, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v10, v5, v6, v1}, Lcom/zui/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    :cond_7
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playNonAtomicComponent()Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    if-nez v2, :cond_9

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_9
    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->ZOOM_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v4, v1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    :goto_3
    iget-object v2, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iget v6, v13, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->translationX:F

    invoke-virtual {v10, v2, v5, v6, v1}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    iget-object v2, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v6, v13, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->translationY:F

    invoke-virtual {v10, v2, v5, v6, v1}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    const/4 v2, 0x5

    invoke-virtual {v11, v2, v1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v2

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v6, v14, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->translationY:F

    invoke-virtual {v10, v3, v5, v6, v2}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    iget-object v5, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v5}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    invoke-virtual {v5}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v7, v14, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->translationY:F

    invoke-virtual {v10, v5, v6, v7, v2}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    :cond_a
    invoke-virtual {v8, v10, v9}, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->setScrim(Lcom/zui/launcher/anim/PropertySetter;Lcom/zui/launcher/LauncherState;)V

    iget-object v2, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v6, v19

    iget v7, v6, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->translationY:F

    invoke-virtual {v10, v2, v5, v7, v1}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    iget-object v2, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iget v6, v6, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->translationX:F

    invoke-virtual {v10, v2, v5, v6, v1}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    :cond_b
    iget v2, v13, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->scale:F

    iget-object v5, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getSearchState()Z

    move-result v5

    if-eqz v5, :cond_c

    sget v2, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->LAUNCHER_ICON_SACLE:F

    :cond_c
    iget-object v5, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v10, v5, v6, v2, v1}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    iget-object v5, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v10, v5, v6, v2, v1}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    if-eqz v3, :cond_d

    new-array v4, v4, [F

    iget-object v5, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v5

    aput v5, v4, v16

    iget-object v5, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v5

    const/4 v6, 0x1

    aput v5, v4, v6

    iget-object v5, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    invoke-virtual {v12, v5, v4}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F

    invoke-virtual {v12, v3, v4}, Lcom/zui/launcher/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[F)V

    aget v5, v4, v16

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setPivotX(F)V

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setPivotY(F)V

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v10, v3, v4, v2, v1}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v10, v3, v4, v2, v1}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    :cond_d
    iget-object v3, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b:Lcom/zui/launcher/Workspace;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_e

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v10, v3, v4, v2, v1}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v10, v3, v4, v2, v1}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    :cond_e
    iget-object v1, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    const v2, 0x7f0a030f

    invoke-virtual {v1, v2}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/16 v16, 0xff

    :cond_f
    move/from16 v0, v16

    iget-object v1, v8, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/views/ScrimView;

    sget-object v2, Lcom/zui/launcher/views/ScrimView;->DRAG_HANDLE_ALPHA:Landroid/util/Property;

    sget-object v3, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v1, v2, v0, v3}, Lcom/zui/launcher/anim/PropertySetter;->setInt(Ljava/lang/Object;Landroid/util/Property;ILandroid/animation/TimeInterpolator;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public applyChildState(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/CellLayout;I)V
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherState;->getWorkspacePageAlphaProvider(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$PageAlphaProvider;

    move-result-object v5

    sget-object v6, Lcom/zui/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/zui/launcher/anim/PropertySetter;

    new-instance v7, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v7}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    new-instance v8, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-direct {v8}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/CellLayout;ILcom/zui/launcher/LauncherState$PageAlphaProvider;Lcom/zui/launcher/anim/PropertySetter;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V

    return-void
.end method

.method public getFinalScale()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->c:F

    return p0
.end method

.method public setScrim(Lcom/zui/launcher/anim/PropertySetter;Lcom/zui/launcher/LauncherState;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragLayer;->getScrim()Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->SCRIM_PROGRESS:Landroid/util/Property;

    iget-object p0, p0, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2, p0}, Lcom/zui/launcher/LauncherState;->getWorkspaceScrimAlpha(Lcom/zui/launcher/Launcher;)F

    move-result p0

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    sget-object p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->SYSUI_PROGRESS:Landroid/util/Property;

    iget-boolean p2, p2, Lcom/zui/launcher/LauncherState;->hasSysUiScrim:Z

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, p0, p2, v1}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setState(Lcom/zui/launcher/LauncherState;)V
    .locals 3

    sget-object v0, Lcom/zui/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/zui/launcher/anim/PropertySetter;

    new-instance v1, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    new-instance v2, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-direct {v2}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/PropertySetter;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 1

    invoke-virtual {p3, p2}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->getPropertySetter(Lcom/zui/launcher/anim/AnimatorSetBuilder;)Lcom/zui/launcher/anim/PropertySetter;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->b(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/PropertySetter;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V

    return-void
.end method
