.class public final synthetic Lcom/zui/launcher/d2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/d2;->a:Landroid/view/View;

    iput p2, p0, Lcom/zui/launcher/d2;->b:F

    iput p3, p0, Lcom/zui/launcher/d2;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/d2;->a:Landroid/view/View;

    iget v1, p0, Lcom/zui/launcher/d2;->b:F

    iget p0, p0, Lcom/zui/launcher/d2;->c:F

    invoke-static {v0, v1, p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->r(Landroid/view/View;FF)V

    return-void
.end method
