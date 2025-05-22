.class Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/zui/launcher/ItemInfo;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/util/IntArray;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/zui/launcher/LauncherAppWidgetInfo;

.field final synthetic d:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;


# direct methods
.method constructor <init>(Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;Lcom/zui/launcher/util/IntArray;Landroid/view/View;Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$c;->d:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$c;->a:Lcom/zui/launcher/util/IntArray;

    iput-object p3, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$c;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$c;->c:Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$c;->d:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$c;->a:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v1, p2}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result p2

    iget-object v1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$c;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$c;->c:Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0, p2, v1, p0}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->e(ILandroid/view/View;Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
