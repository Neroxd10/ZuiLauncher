.class public final synthetic Lcom/zui/launcher/popup/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/zui/launcher/BaseDraggingActivity;

.field public final synthetic c:Lcom/zui/launcher/ItemInfo;

.field public final synthetic d:Landroid/os/Handler;

.field public final synthetic e:Lcom/zui/launcher/popup/PopupContainerWithArrow;

.field public final synthetic f:Landroid/os/UserHandle;

.field public final synthetic g:Landroid/content/ComponentName;

.field public final synthetic h:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;Landroid/os/Handler;Lcom/zui/launcher/popup/PopupContainerWithArrow;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/t;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/zui/launcher/popup/t;->b:Lcom/zui/launcher/BaseDraggingActivity;

    iput-object p3, p0, Lcom/zui/launcher/popup/t;->c:Lcom/zui/launcher/ItemInfo;

    iput-object p4, p0, Lcom/zui/launcher/popup/t;->d:Landroid/os/Handler;

    iput-object p5, p0, Lcom/zui/launcher/popup/t;->e:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    iput-object p6, p0, Lcom/zui/launcher/popup/t;->f:Landroid/os/UserHandle;

    iput-object p7, p0, Lcom/zui/launcher/popup/t;->g:Landroid/content/ComponentName;

    iput-object p8, p0, Lcom/zui/launcher/popup/t;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/popup/t;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/zui/launcher/popup/t;->b:Lcom/zui/launcher/BaseDraggingActivity;

    iget-object v2, p0, Lcom/zui/launcher/popup/t;->c:Lcom/zui/launcher/ItemInfo;

    iget-object v3, p0, Lcom/zui/launcher/popup/t;->d:Landroid/os/Handler;

    iget-object v4, p0, Lcom/zui/launcher/popup/t;->e:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    iget-object v5, p0, Lcom/zui/launcher/popup/t;->f:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/zui/launcher/popup/t;->g:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/zui/launcher/popup/t;->h:Ljava/util/List;

    invoke-static/range {v0 .. v7}, Lcom/zui/launcher/popup/PopupPopulator;->d(Ljava/util/List;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;Landroid/os/Handler;Lcom/zui/launcher/popup/PopupContainerWithArrow;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/util/List;)V

    return-void
.end method
