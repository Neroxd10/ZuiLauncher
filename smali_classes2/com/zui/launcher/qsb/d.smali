.class public final synthetic Lcom/zui/launcher/qsb/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/qsb/QsbWidgetHostView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/qsb/QsbWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/qsb/d;->a:Lcom/zui/launcher/qsb/QsbWidgetHostView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/qsb/d;->a:Lcom/zui/launcher/qsb/QsbWidgetHostView;

    invoke-virtual {p0}, Lcom/zui/launcher/qsb/QsbWidgetHostView;->h()V

    return-void
.end method
