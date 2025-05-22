.class public abstract Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/zui/launcher/pageindicators/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat$OverlayChangeListener;
    }
.end annotation


# instance fields
.field protected mDownRawX:I

.field protected mDownRawY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getDownRawX()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;->mDownRawX:I

    return p0
.end method

.method public getDownRawY()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;->mDownRawY:I

    return p0
.end method

.method public abstract removeOverlayMark()V
.end method

.method public abstract setColor()V
.end method

.method public abstract setOverlayChangeListener(Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat$OverlayChangeListener;)V
.end method

.method public abstract showOverlayMark()V
.end method

.method public abstract showOverlayMark(Z)V
.end method
