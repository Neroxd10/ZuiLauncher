.class public Lcom/zui/launcher/model/PhoneInfo;
.super Lcom/zui/launcher/model/BaseInfo;
.source ""


# instance fields
.field public phone:Ljava/lang/String;

.field public phoneType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/model/PhoneInfo;->phoneType:I

    return-void
.end method
