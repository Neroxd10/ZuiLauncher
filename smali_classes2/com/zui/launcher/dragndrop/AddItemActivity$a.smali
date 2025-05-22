.class Lcom/zui/launcher/dragndrop/AddItemActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/AddItemActivity;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/dragndrop/AddItemActivity;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/AddItemActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/AddItemActivity$a;->a:Lcom/zui/launcher/dragndrop/AddItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/AddItemActivity$a;->a:Lcom/zui/launcher/dragndrop/AddItemActivity;

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/AddItemActivity;->f(Lcom/zui/launcher/dragndrop/AddItemActivity;)Lcom/zui/launcher/widget/WidgetCell;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/dragndrop/AddItemActivity;->onPlaceAutomaticallyClick(Landroid/view/View;)V

    return-void
.end method
