.class Lcom/zui/launcher/folder/Folder$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/Folder;->updateTextViewFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/zui/launcher/folder/Folder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/Folder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder$b;->b:Lcom/zui/launcher/folder/Folder;

    iput-object p2, p0, Lcom/zui/launcher/folder/Folder$b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x3d

    if-ne p2, v1, :cond_0

    invoke-virtual {p3, p1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$b;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$b;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method
