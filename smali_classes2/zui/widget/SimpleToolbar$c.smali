.class Lzui/widget/SimpleToolbar$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/SimpleToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Landroid/view/MenuItem;

.field b:Landroid/view/View;

.field final synthetic c:Lzui/widget/SimpleToolbar;


# direct methods
.method constructor <init>(Lzui/widget/SimpleToolbar;Landroid/view/MenuItem;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/SimpleToolbar$c;->c:Lzui/widget/SimpleToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lzui/widget/SimpleToolbar$c;->a:Landroid/view/MenuItem;

    iput-object p4, p0, Lzui/widget/SimpleToolbar$c;->b:Landroid/view/View;

    return-void
.end method
