.class public Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragInfo"
.end annotation


# instance fields
.field public dragType:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$DragType;

.field public info:Lcom/zui/launcher/ItemInfo;

.field public item:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
