.class Lcom/zui/launcher/HorizontalListView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/HorizontalListView;
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

    iput-object p1, p0, Lcom/zui/launcher/HorizontalListView$c;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView$c;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method
