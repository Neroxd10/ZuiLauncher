.class public final synthetic Lcom/zui/launcher/popup/c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/BaseDraggingActivity;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Lcom/zui/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/BaseDraggingActivity;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/c0;->a:Lcom/zui/launcher/BaseDraggingActivity;

    iput-object p2, p0, Lcom/zui/launcher/popup/c0;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/zui/launcher/popup/c0;->c:Lcom/zui/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/popup/c0;->a:Lcom/zui/launcher/BaseDraggingActivity;

    iget-object v1, p0, Lcom/zui/launcher/popup/c0;->b:Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/launcher/popup/c0;->c:Lcom/zui/launcher/ItemInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/zui/launcher/popup/SystemShortcut$FloatOpen;->b(Lcom/zui/launcher/BaseDraggingActivity;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V

    return-void
.end method
