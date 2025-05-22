.class public final synthetic Lcom/zui/launcher/popup/d0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/ItemInfo;

.field public final synthetic b:Lcom/zui/launcher/BaseDraggingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/d0;->a:Lcom/zui/launcher/ItemInfo;

    iput-object p2, p0, Lcom/zui/launcher/popup/d0;->b:Lcom/zui/launcher/BaseDraggingActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/popup/d0;->a:Lcom/zui/launcher/ItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/popup/d0;->b:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/popup/SystemShortcut$Install;->b(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/BaseDraggingActivity;Landroid/view/View;)V

    return-void
.end method
