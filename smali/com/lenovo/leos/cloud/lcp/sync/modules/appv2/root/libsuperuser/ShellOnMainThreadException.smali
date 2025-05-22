.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/ShellOnMainThreadException;
.super Ljava/lang/RuntimeException;
.source ""


# static fields
.field public static final EXCEPTION_COMMAND:Ljava/lang/String; = "Application attempted to run a shell command from the main thread"

.field public static final EXCEPTION_NOT_IDLE:Ljava/lang/String; = "Application attempted to wait for a non-idle shell to close on the main thread"

.field public static final EXCEPTION_WAIT_IDLE:Ljava/lang/String; = "Application attempted to wait for a shell to become idle on the main thread"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
