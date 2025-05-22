.class public final synthetic Lcom/zui/launcher/popup/g0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/BaseDraggingActivity;

.field public final synthetic b:Lcom/zui/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/g0;->a:Lcom/zui/launcher/BaseDraggingActivity;

    iput-object p2, p0, Lcom/zui/launcher/popup/g0;->b:Lcom/zui/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/popup/g0;->a:Lcom/zui/launcher/BaseDraggingActivity;

    iget-object p0, p0, Lcom/zui/launcher/popup/g0;->b:Lcom/zui/launcher/ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/popup/SystemShortcut$Uninstall;->b(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V

    return-void
.end method
