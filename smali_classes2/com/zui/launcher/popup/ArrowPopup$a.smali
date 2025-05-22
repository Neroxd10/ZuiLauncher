.class Lcom/zui/launcher/popup/ArrowPopup$a;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/popup/ArrowPopup;


# direct methods
.method constructor <init>(Lcom/zui/launcher/popup/ArrowPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/popup/ArrowPopup$a;->a:Lcom/zui/launcher/popup/ArrowPopup;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/zui/launcher/popup/ArrowPopup$a;->a:Lcom/zui/launcher/popup/ArrowPopup;

    invoke-static {p0}, Lcom/zui/launcher/popup/ArrowPopup;->a(Lcom/zui/launcher/popup/ArrowPopup;)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
