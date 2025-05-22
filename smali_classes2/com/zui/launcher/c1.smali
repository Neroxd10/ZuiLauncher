.class public final synthetic Lcom/zui/launcher/c1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/InvariantDeviceProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/c1;->a:Lcom/zui/launcher/InvariantDeviceProfile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/c1;->a:Lcom/zui/launcher/InvariantDeviceProfile;

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->q(Lcom/zui/launcher/InvariantDeviceProfile;Landroid/content/Context;)V

    return-void
.end method
