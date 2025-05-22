.class public final synthetic Lcom/zui/launcher/util/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/DisplayController$Info;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/DisplayController$Info;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/h;->a:Lcom/zui/launcher/util/DisplayController$Info;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/h;->a:Lcom/zui/launcher/util/DisplayController$Info;

    check-cast p1, Landroid/view/WindowMetrics;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/DisplayController$Info;->c(Landroid/view/WindowMetrics;)V

    return-void
.end method
