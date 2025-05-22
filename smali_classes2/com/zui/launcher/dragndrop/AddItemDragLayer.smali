.class public Lcom/zui/launcher/dragndrop/AddItemDragLayer;
.super Lcom/zui/launcher/views/BaseDragLayer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/views/BaseDragLayer<",
        "Lcom/zui/launcher/dragndrop/AddItemActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/dragndrop/AddItemDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected isEventTypeTwoProcess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public recreateControllers()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/zui/launcher/util/TouchController;

    iput-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mControllers:[Lcom/zui/launcher/util/TouchController;

    return-void
.end method
