.class public Lcom/google/android/material/transformation/FabTransformationSheetBehavior;
.super Lcom/google/android/material/transformation/FabTransformationBehavior;
.source ""


# instance fields
.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/transformation/FabTransformationBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateImportantForAccessibility(Landroid/view/View;Z)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    if-eqz p2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    :cond_1
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_7

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    instance-of v6, v6, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    if-eq v5, p1, :cond_6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    if-nez p2, :cond_4

    iget-object v6, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-eqz v6, :cond_6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_4
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_5

    iget-object v6, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v6, 0x4

    :goto_2
    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    if-nez p2, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    :cond_8
    return-void
.end method


# virtual methods
.method protected onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .locals 1

    if-eqz p2, :cond_0

    sget p0, Lcom/google/android/material/R$animator;->mtrl_fab_transformation_sheet_expand_spec:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/google/android/material/R$animator;->mtrl_fab_transformation_sheet_collapse_spec:I

    :goto_0
    new-instance p2, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    invoke-direct {p2}, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;-><init>()V

    invoke-static {p1, p0}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    new-instance p0, Lcom/google/android/material/animation/Positioning;

    const/16 p1, 0x11

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/material/animation/Positioning;-><init>(IFF)V

    iput-object p0, p2, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    return-object p2
.end method

.method protected onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->updateImportantForAccessibility(Landroid/view/View;Z)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z

    move-result p0

    return p0
.end method
