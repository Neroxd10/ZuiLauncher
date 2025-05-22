.class public Lcom/zui/launcher/anim/PendingAnimation$EndState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/anim/PendingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndState"
.end annotation


# instance fields
.field public isSuccess:Z

.field public logAction:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/zui/launcher/anim/PendingAnimation$EndState;->isSuccess:Z

    iput p2, p0, Lcom/zui/launcher/anim/PendingAnimation$EndState;->logAction:I

    return-void
.end method
