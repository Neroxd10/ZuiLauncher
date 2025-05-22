.class Lcom/zui/launcher/HorizontalListView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/HorizontalListView;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/HorizontalListView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/HorizontalListView$a;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView$a;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-static {p0}, Lcom/zui/launcher/HorizontalListView;->a(Lcom/zui/launcher/HorizontalListView;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
