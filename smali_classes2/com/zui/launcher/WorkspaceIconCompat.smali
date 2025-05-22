.class public interface abstract Lcom/zui/launcher/WorkspaceIconCompat;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DISPLAY_ALL_APPS:I = 0x1

.field public static final DISPLAY_FOLDER:I = 0x2

.field public static final DISPLAY_WORKSPACE:I


# virtual methods
.method public abstract applyDotState(Lcom/zui/launcher/ItemInfo;Z)V
.end method

.method public abstract applyFromApplicationInfo(Lcom/zui/launcher/AppInfo;)V
.end method

.method public abstract applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;Z)V
.end method

.method public abstract createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;
.end method

.method public abstract doUpdateRecommendStatus()V
.end method

.method public abstract forceHideDot(Z)V
.end method

.method public abstract getCompoundTopDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getDisplayType()I
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getIconBounds(Landroid/graphics/Rect;)V
.end method

.method public abstract getIconSize()I
.end method

.method public abstract getTextAlpha()F
.end method

.method public abstract invalidate()V
.end method

.method public abstract isActive()Z
.end method

.method public abstract isLayoutHorizontal()Z
.end method

.method public abstract refreshIcon()V
.end method

.method public abstract replaceReal(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)V
.end method

.method public abstract reset()V
.end method

.method public abstract setDrawableVisibility(I)V
.end method

.method public abstract setIconVisible(Z)V
.end method

.method public abstract setLongPressTimeoutFactor(F)V
.end method

.method public abstract setShadowsEnabled(Z)V
.end method

.method public abstract setTextAlpha(F)V
.end method

.method public abstract setTextVisibility(Z)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract shouldTextBeVisible()Z
.end method

.method public abstract verifyHighRes()V
.end method
