.class public final synthetic Lcom/zui/quickstep/y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/SecureSettingsObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/SecureSettingsObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/y;->a:Lcom/zui/launcher/util/SecureSettingsObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/y;->a:Lcom/zui/launcher/util/SecureSettingsObserver;

    invoke-virtual {p0}, Lcom/zui/launcher/util/SecureSettingsObserver;->unregister()V

    return-void
.end method
