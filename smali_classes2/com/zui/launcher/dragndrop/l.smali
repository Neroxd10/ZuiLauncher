.class public final synthetic Lcom/zui/launcher/dragndrop/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/dragndrop/BaseItemDragListener;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/dragndrop/BaseItemDragListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/l;->a:Lcom/zui/launcher/dragndrop/BaseItemDragListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/l;->a:Lcom/zui/launcher/dragndrop/BaseItemDragListener;

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->removeListener()V

    return-void
.end method
