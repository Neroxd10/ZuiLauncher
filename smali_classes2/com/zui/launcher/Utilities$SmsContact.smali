.class public Lcom/zui/launcher/Utilities$SmsContact;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsContact"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/Utilities$SmsContact;->address:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/launcher/Utilities$SmsContact;->name:Ljava/lang/String;

    return-void
.end method
