.class public Lcom/zui/launcher/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;
.super Lcom/zui/launcher/keyboard/FocusIndicatorHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/keyboard/FocusIndicatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleFocusIndicatorHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
