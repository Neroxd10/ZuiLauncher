.class public Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/pageindicators/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;
    }
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip;->b:I

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setActiveMarker(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip;->updateTabTextColor(I)V

    iget-object v0, p0, Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip;->a:Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip;->b:I

    if-eq v1, p1, :cond_0

    invoke-interface {v0, p1}, Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;->onActivePageChanged(I)V

    :cond_0
    iput p1, p0, Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip;->b:I

    return-void
.end method

.method public setMarkersCount(I)V
    .locals 0

    return-void
.end method

.method public setOnActivePageChangedListener(Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip;->a:Lcom/zui/launcher/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;

    return-void
.end method

.method public setScroll(II)V
    .locals 0

    return-void
.end method

.method public updateTabTextColor(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
