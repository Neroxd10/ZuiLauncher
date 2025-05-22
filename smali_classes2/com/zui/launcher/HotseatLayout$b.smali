.class Lcom/zui/launcher/HotseatLayout$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/HotseatLayout;->removeView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/HotseatLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/HotseatLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/HotseatLayout$b;->a:Lcom/zui/launcher/HotseatLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/HotseatLayout$b;->a:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->reorderAllIconsJustUI()V

    return-void
.end method
