.class Lzui/widget/AlphabeticIndexBar$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/AlphabeticIndexBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/widget/AlphabeticIndexBar;


# direct methods
.method constructor <init>(Lzui/widget/AlphabeticIndexBar;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/AlphabeticIndexBar$a;->a:Lzui/widget/AlphabeticIndexBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar$a;->a:Lzui/widget/AlphabeticIndexBar;

    invoke-static {v0}, Lzui/widget/AlphabeticIndexBar;->a(Lzui/widget/AlphabeticIndexBar;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzui/widget/AlphabeticIndexBar$a;->a:Lzui/widget/AlphabeticIndexBar;

    invoke-static {p0}, Lzui/widget/AlphabeticIndexBar;->a(Lzui/widget/AlphabeticIndexBar;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
