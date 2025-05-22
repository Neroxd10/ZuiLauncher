.class Lcom/zui/launcher/AppStoreReceiver$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/AppStoreReceiver$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:[I

.field final synthetic d:Lcom/zui/launcher/AppStoreReceiver$c;


# direct methods
.method constructor <init>(Lcom/zui/launcher/AppStoreReceiver$c;ZLjava/util/ArrayList;[I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/AppStoreReceiver$c$a;->d:Lcom/zui/launcher/AppStoreReceiver$c;

    iput-boolean p2, p0, Lcom/zui/launcher/AppStoreReceiver$c$a;->a:Z

    iput-object p3, p0, Lcom/zui/launcher/AppStoreReceiver$c$a;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/zui/launcher/AppStoreReceiver$c$a;->c:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/AppStoreReceiver$c$a;->d:Lcom/zui/launcher/AppStoreReceiver$c;

    iget-object v1, v0, Lcom/zui/launcher/AppStoreReceiver$c;->d:Lcom/zui/launcher/AppStoreReceiver;

    iget-object v2, v0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v3, v0, Lcom/zui/launcher/AppStoreReceiver$c;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/zui/launcher/AppStoreReceiver$c;->c:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/zui/launcher/AppStoreReceiver$c$a;->a:Z

    iget-object v6, p0, Lcom/zui/launcher/AppStoreReceiver$c$a;->b:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/zui/launcher/AppStoreReceiver$c$a;->c:[I

    invoke-static/range {v1 .. v7}, Lcom/zui/launcher/AppStoreReceiver;->d(Lcom/zui/launcher/AppStoreReceiver;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;[I)V

    return-void
.end method
