.class Lcom/zui/launcher/Launcher$m1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->k1(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/CacheInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/zui/launcher/WorkspaceItemInfo;

.field final synthetic c:Lcom/zui/launcher/CacheInfo;

.field final synthetic d:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;ILcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/CacheInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$m1;->d:Lcom/zui/launcher/Launcher;

    iput p2, p0, Lcom/zui/launcher/Launcher$m1;->a:I

    iput-object p3, p0, Lcom/zui/launcher/Launcher$m1;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iput-object p4, p0, Lcom/zui/launcher/Launcher$m1;->c:Lcom/zui/launcher/CacheInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/Launcher$m1;->a:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/zui/launcher/Launcher$m1;->d:Lcom/zui/launcher/Launcher;

    iget-object v2, p0, Lcom/zui/launcher/Launcher$m1;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$m1;->c:Lcom/zui/launcher/CacheInfo;

    invoke-static {v1, v2, p0, v0}, Lcom/zui/launcher/Launcher;->b0(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/CacheInfo;I)V

    return-void
.end method
