.class public Lcom/zui/launcher/model/CachePair;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public cache:Lcom/zui/launcher/CacheInfo;

.field public item:Lcom/zui/launcher/WorkspaceItemInfo;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/CacheInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/CachePair;->item:Lcom/zui/launcher/WorkspaceItemInfo;

    iput-object p2, p0, Lcom/zui/launcher/model/CachePair;->cache:Lcom/zui/launcher/CacheInfo;

    return-void
.end method
