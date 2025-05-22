.class Lzui/widget/KeyboardViewX$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;


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

    iput-object p1, p0, Lzui/widget/KeyboardViewX$e;->a:Lzui/widget/KeyboardViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyCharPress(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lzui/widget/KeyboardViewX$e;->a:Lzui/widget/KeyboardViewX;

    invoke-static {p0, p1}, Lzui/widget/KeyboardViewX;->e(Lzui/widget/KeyboardViewX;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
