.class public final synthetic Lcom/zui/launcher/views/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/AbstractFloatingView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/AbstractFloatingView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/views/g;->a:Lcom/zui/launcher/AbstractFloatingView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/g;->a:Lcom/zui/launcher/AbstractFloatingView;

    invoke-static {p0}, Lcom/zui/launcher/views/BaseDragLayer;->b(Lcom/zui/launcher/AbstractFloatingView;)V

    return-void
.end method
