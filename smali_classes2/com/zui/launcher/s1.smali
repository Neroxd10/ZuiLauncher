.class public final synthetic Lcom/zui/launcher/s1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/LauncherAppState;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/LauncherAppState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/s1;->a:Lcom/zui/launcher/LauncherAppState;

    return-void
.end method


# virtual methods
.method public final onIdpChanged(ILcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/s1;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/LauncherAppState;->a(Lcom/zui/launcher/LauncherAppState;ILcom/zui/launcher/InvariantDeviceProfile;)V

    return-void
.end method
