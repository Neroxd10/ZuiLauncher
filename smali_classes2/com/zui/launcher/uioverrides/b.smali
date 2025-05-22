.class public final synthetic Lcom/zui/launcher/uioverrides/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/uioverrides/DeviceFlag;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/uioverrides/DeviceFlag;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/b;->a:Lcom/zui/launcher/uioverrides/DeviceFlag;

    iput-object p2, p0, Lcom/zui/launcher/uioverrides/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/b;->a:Lcom/zui/launcher/uioverrides/DeviceFlag;

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/b;->b:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/uioverrides/DeviceFlag;->a(Landroid/content/Context;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
