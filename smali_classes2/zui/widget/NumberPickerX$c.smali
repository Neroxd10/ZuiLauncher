.class Lzui/widget/NumberPickerX$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/NumberPickerX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lzui/widget/NumberPickerX;


# direct methods
.method constructor <init>(Lzui/widget/NumberPickerX;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/NumberPickerX$c;->a:Lzui/widget/NumberPickerX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lzui/widget/NumberPickerX$c;->a:Lzui/widget/NumberPickerX;

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->performLongClick()Z

    return-void
.end method
