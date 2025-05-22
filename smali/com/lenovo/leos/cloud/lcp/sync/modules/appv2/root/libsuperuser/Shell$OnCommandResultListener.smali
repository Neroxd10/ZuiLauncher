.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCommandResultListener"
.end annotation


# static fields
.field public static final SHELL_DIED:I = -0x2

.field public static final SHELL_EXEC_FAILED:I = -0x3

.field public static final SHELL_RUNNING:I = 0x0

.field public static final SHELL_WRONG_UID:I = -0x4

.field public static final WATCHDOG_EXIT:I = -0x1


# virtual methods
.method public abstract onCommandResult(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
