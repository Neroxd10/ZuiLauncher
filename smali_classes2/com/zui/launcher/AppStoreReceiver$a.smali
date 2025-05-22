.class Lcom/zui/launcher/AppStoreReceiver$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/AppStoreReceiver;->removeRecommendItemBackground(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/zui/launcher/AppStoreReceiver;


# direct methods
.method constructor <init>(Lcom/zui/launcher/AppStoreReceiver;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/AppStoreReceiver$a;->c:Lcom/zui/launcher/AppStoreReceiver;

    iput-object p2, p0, Lcom/zui/launcher/AppStoreReceiver$a;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/zui/launcher/AppStoreReceiver$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/AppStoreReceiver$a;->c:Lcom/zui/launcher/AppStoreReceiver;

    iget-object v1, p0, Lcom/zui/launcher/AppStoreReceiver$a;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/zui/launcher/AppStoreReceiver$a;->b:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/zui/launcher/AppStoreReceiver;->removeRecommendItemBackground(Ljava/lang/String;ZZ)V

    return-void
.end method
