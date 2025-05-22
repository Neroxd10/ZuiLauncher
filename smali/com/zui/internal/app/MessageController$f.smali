.class Lcom/zui/internal/app/MessageController$f;
.super Landroid/text/style/ClickableSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private c:Lzui/app/MessageDialog$OnDescriptionClickableTextListener;


# direct methods
.method public constructor <init>(Lcom/zui/internal/app/MessageController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lzui/app/MessageDialog$OnDescriptionClickableTextListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p2, p0, Lcom/zui/internal/app/MessageController$f;->a:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/zui/internal/app/MessageController$f;->b:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/zui/internal/app/MessageController$f;->c:Lzui/app/MessageDialog$OnDescriptionClickableTextListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/internal/app/MessageController$f;->c:Lzui/app/MessageDialog$OnDescriptionClickableTextListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/internal/app/MessageController$f;->a:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/zui/internal/app/MessageController$f;->b:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, v1, p0}, Lzui/app/MessageDialog$OnDescriptionClickableTextListener;->onClickableTextClicked(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
