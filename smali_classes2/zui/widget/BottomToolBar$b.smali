.class Lzui/widget/BottomToolBar$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/widget/BottomToolBar;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/widget/BottomToolBar;


# direct methods
.method constructor <init>(Lzui/widget/BottomToolBar;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/BottomToolBar$b;->a:Lzui/widget/BottomToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lzui/widget/BottomToolBar$b;->a:Lzui/widget/BottomToolBar;

    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->closePopMenu()V

    return-void
.end method
