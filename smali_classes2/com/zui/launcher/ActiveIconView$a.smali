.class Lcom/zui/launcher/ActiveIconView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/ActiveIconView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/ActiveIconView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/ActiveIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/ActiveIconView$a;->a:Lcom/zui/launcher/ActiveIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/ActiveIconView$a;->a:Lcom/zui/launcher/ActiveIconView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/ActiveIconView;->a(Lcom/zui/launcher/ActiveIconView;Z)V

    return-void
.end method
