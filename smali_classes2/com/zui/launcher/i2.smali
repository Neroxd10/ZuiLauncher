.class public final synthetic Lcom/zui/launcher/i2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/i2;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/i2;->a:Ljava/util/List;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->s(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method
