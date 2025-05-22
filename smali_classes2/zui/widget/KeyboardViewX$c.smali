.class Lzui/widget/KeyboardViewX$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/widget/KeyboardViewX;->l()V
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

    iput-object p1, p0, Lzui/widget/KeyboardViewX$c;->a:Lzui/widget/KeyboardViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDeletePress()Z
    .locals 0

    iget-object p0, p0, Lzui/widget/KeyboardViewX$c;->a:Lzui/widget/KeyboardViewX;

    invoke-static {p0}, Lzui/widget/KeyboardViewX;->c(Lzui/widget/KeyboardViewX;)Z

    move-result p0

    return p0
.end method
