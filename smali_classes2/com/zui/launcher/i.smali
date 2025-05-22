.class public final synthetic Lcom/zui/launcher/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/AppWidgetResizeFrame;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/AppWidgetResizeFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/i;->a:Lcom/zui/launcher/AppWidgetResizeFrame;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/i;->a:Lcom/zui/launcher/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/zui/launcher/AppWidgetResizeFrame;->f()V

    return-void
.end method
