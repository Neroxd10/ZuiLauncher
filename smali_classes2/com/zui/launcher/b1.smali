.class public final synthetic Lcom/zui/launcher/b1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/InvariantDeviceProfile;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/InvariantDeviceProfile;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/b1;->a:Lcom/zui/launcher/InvariantDeviceProfile;

    iput-object p2, p0, Lcom/zui/launcher/b1;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/b1;->a:Lcom/zui/launcher/InvariantDeviceProfile;

    iget-object p0, p0, Lcom/zui/launcher/b1;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->m(Landroid/content/Context;)V

    return-void
.end method
