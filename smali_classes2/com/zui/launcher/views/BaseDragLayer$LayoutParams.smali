.class public Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;
.super Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/views/BaseDragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    return-void
.end method
