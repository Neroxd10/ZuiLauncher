.class public final enum Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "APINAME"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;->a:[Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;
    .locals 1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;

    return-object p0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;->a:[Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;

    invoke-virtual {v0}, [Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;

    return-object v0
.end method
