.class public Lcom/android/systemui/shared/system/ThreadedRendererCompat;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static EGL_CONTEXT_PRIORITY_HIGH_IMG:I = 0x3101

.field public static EGL_CONTEXT_PRIORITY_LOW_IMG:I = 0x3103

.field public static EGL_CONTEXT_PRIORITY_MEDIUM_IMG:I = 0x3102

.field public static EGL_CONTEXT_PRIORITY_REALTIME_NV:I = 0x3357


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setContextPriority(I)V
    .locals 0

    invoke-static {p0}, Landroid/view/ThreadedRenderer;->setContextPriority(I)V

    return-void
.end method
