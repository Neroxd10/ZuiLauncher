.class public final synthetic Lcom/zui/launcher/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/DropTargetBar;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/DropTargetBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/t;->a:Lcom/zui/launcher/DropTargetBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/t;->a:Lcom/zui/launcher/DropTargetBar;

    invoke-virtual {p0}, Lcom/zui/launcher/DropTargetBar;->a()V

    return-void
.end method
