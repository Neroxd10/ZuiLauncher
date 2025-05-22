.class public Lcom/zui/launcher/reorder/Reorder$SwapItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/reorder/Reorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwapItem"
.end annotation


# instance fields
.field public item:Ljava/lang/Object;

.field public t:Lcom/zui/launcher/reorder/Reorder$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zui/launcher/reorder/Reorder$Type;->empty:Lcom/zui/launcher/reorder/Reorder$Type;

    iput-object v0, p0, Lcom/zui/launcher/reorder/Reorder$SwapItem;->t:Lcom/zui/launcher/reorder/Reorder$Type;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/reorder/Reorder$SwapItem;->item:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/reorder/Reorder$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/reorder/Reorder$SwapItem;->t:Lcom/zui/launcher/reorder/Reorder$Type;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/reorder/Reorder$SwapItem;->item:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/reorder/Reorder$Type;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/reorder/Reorder$SwapItem;->t:Lcom/zui/launcher/reorder/Reorder$Type;

    iput-object p2, p0, Lcom/zui/launcher/reorder/Reorder$SwapItem;->item:Ljava/lang/Object;

    return-void
.end method
