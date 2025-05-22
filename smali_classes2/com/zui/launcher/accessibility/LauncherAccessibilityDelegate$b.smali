.class Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/zui/launcher/ItemInfo;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/ItemInfo;

.field final synthetic b:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;


# direct methods
.method constructor <init>(Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$b;->b:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$b;->a:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$b;->a:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$b;->b:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, v1, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/zui/launcher/Launcher;->bindItems(Ljava/util/List;Z)V

    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$b;->b:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    const v0, 0x7f120410

    invoke-virtual {p0, v0}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a(I)V

    return-void
.end method
