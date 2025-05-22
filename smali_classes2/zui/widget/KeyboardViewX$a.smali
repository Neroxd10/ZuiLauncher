.class Lzui/widget/KeyboardViewX$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/KeyboardViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/widget/KeyboardViewX;


# direct methods
.method constructor <init>(Lzui/widget/KeyboardViewX;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/KeyboardViewX$a;->a:Lzui/widget/KeyboardViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, Lzui/widget/KeyboardViewX$a;->a:Lzui/widget/KeyboardViewX;

    invoke-static {p0, p1}, Lzui/widget/KeyboardViewX;->a(Lzui/widget/KeyboardViewX;Ljava/lang/CharSequence;)V

    return-void
.end method
